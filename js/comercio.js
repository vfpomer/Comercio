$(document).ready(function() {
    cargarGrupos();
    
    // Carrito de la compra (inicialmente vacío)
    var carrito = [];

    // Función para cargar los grupos de productos
    function cargarGrupos() {
        $.ajax({
            url: "cargar_datos.php",
            type: "POST",
            data: { opcion: "TG" },
            dataType: "json",
            success: function(data) {
                var grupoLista = $("#grupo-lista");
                grupoLista.empty();
                
                $.each(data, function(index, grupo) {
                    var grupoItem = $("<div>", {
                        class: "grupo-item",
                        text: grupo.nombre
                    });

                    grupoItem.click(function() {
                        cargarProductos(grupo.nombre);
                    });

                    grupoLista.append(grupoItem);
                });
            },
            error: function(error) {
                console.log("Error al cargar los grupos:", error);
            }
        });
    }

    // Función para cargar los productos de un grupo
    function cargarProductos(grupo) {
        $.ajax({
            url: "cargar_datos.php",
            type: "POST",
            data: { opcion: "PG", grupo: grupo },
            dataType: "json",
            success: function(data) {
                var productosLista = $("#productos-lista");
                productosLista.empty();
                
                $.each(data, function(index, producto) {
                    var productoItem = $("<div>", {
                        class: "producto-item",
                        text: producto.nombre + " - Precio: " + producto.precio
                    });

                    productoItem.click(function() {
                        agregarAlCarrito(producto);
                    });

                    productosLista.append(productoItem);
                });
            },
            error: function(error) {
                console.log("Error al cargar los productos:", error);
            }
        });
    }

    // Función para agregar un producto al carrito
    function agregarAlCarrito(producto) {
        if (producto.stock > 0) {
            carrito.push(producto);
            producto.stock--;

            actualizarCarrito();
        } else {
            console.log("Producto sin stock disponible");
        }
    }

    // Función para actualizar la visualización del carrito
    function actualizarCarrito() {
        var carritoLista = $("#carrito-lista");
        carritoLista.empty();

        $.each(carrito, function(index, producto) {
            var carritoItem = $("<div>", {
                class: "carrito-item",
                text: producto.nombre
            });

            carritoLista.append(carritoItem);
        });
    }
});
