# Entrega Final - Almacen

![Logo](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMTYk83lbH6WuSCfGuMvE9sMYoSkIk8yrZT77NPK7j3w1Eyg94BFAcjuypdCDYeFCaIGw&usqp=CAU)


### Descripcion

Este es un proyecto que simula una parte de la logica de como trabaja internamente un almacen. 
Modelando la interaccion de los empleados con el almacen , los productos con sus categorias , 
la orden de compra de un cliente con sus productos , los almacenes con sus proveedores .

En esta base de datos se modela las siguiente entidades :

- Almacen
- Cliente
- Categoria
- Empleado
- OrdenDeCompra
- Producto
- Distribuidor
- Proveedor

Ademas se agregaron unas tablas de auditoria de un producto. Cuando cambia su precio , nombre o descripcion.
Son las siguientes:

- Productoauditprecio
- Productoauditnombre
- Productoauditdescripcion



### Functions

- cantidadDeProductosDeTipo -> me da la cantidad de productos de un tipo dado una categoria.

- cantEmpleadosDeUnAlmacen -> devuelve la cantidad de empleados de un almacen dado un id de almacen.

### Stored Procedure

- empleados_ordenados_por -> ordena los empleados por un campo o columna y de forma asc o desc.

- insertar_producto -> inserta un producto en la tabla de producto.

### Triggers

- productoprecioupdate -> Guarda informacion en una tabla de auditoria cuando cambia el precio de un producto.

- productonombreupdate -> Guarda informacion en una tabla de auditoria cuando cambia el nombre de un producto.

### Views

- productomascaro -> Esta view es para saber el producto mas caro de mi BD en el tiempo.

- nomyapelldecliquecompraronproddeprimeranecesidad -> En esta view podemos ver los nombres y apellido de los clientes que compraron productos de primera necesidad.
  
## Tecnologias

**BD:** MySQL

## Authors

- [@martinMamani](https://github.com/martinMamani)
