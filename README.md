# Trabajo-final-proyecto-biblioteca-iliana--teniente
Entrega de Proyecto Final de SQL

Alumno: Iliana Valeria Teniente Guzmán

Comisión: 57190

Profesor: Anderson Ocaña

Tutor: Leonel Lo Presti

#INTRODUCCIÓN

El proyecto de Biblioteca es un sistema de gestión que permite llevar un control eficiente de los clientes, empleados, editoriales, autores, libros, préstamos y ventas relacionadas con una biblioteca. Este sistema facilita el manejo de la información y optimiza los procesos administrativos.

#OBJETIVO

El objetivo principal del proyecto es ofrecer una herramienta eficaz para la gestión integral de una biblioteca. A través del registro y seguimiento detallado de clientes, empleados, libros y préstamos se busca mejorar la experiencia del usuario y optimizar las operaciones internas.

#SITUACIÓN PROBLEMATICA

Las bibliotecas suelen enfrentarse a desafíos como el control preciso del inventario de libros, la gestión adecuada de los préstamos y devoluciones, así como el seguimiento detallado de clientes. La falta de un sistema centralizado puede dificultar estas tareas e impactar negativamente en la calidad del servicio

#MODELO DE NEGOCIO

El modelo propuesto se basa en ofrecer soluciones tecnológicas para mejorar la operatividad y eficiencia en las bibliotecas.

#DIAGRAMA DE ENTIDAD RELACIÓN

![image](https://github.com/user-attachments/assets/2b588ef9-1663-4bc1-9338-c4ddbdcb8b3a)

#TABLAS CON DESCRIPCIÓN DE ESTRUCTURA

![image](https://github.com/user-attachments/assets/3ae12d09-0186-4cf7-b199-4d44bd830d93)
*La tabla "clientes" tiene como objetivo almacenar la información de los clientes que utilizan la biblioteca. Cada cliente tendrá un identificador único (id_cliente_lector) que se generará automáticamente, y se almacenarán datos como nombre, apellido, teléfono, dirección, correo electrónico y número de cliente.

El propósito de esta tabla es mantener un registro organizado de los clientes que frecuentan la biblioteca, lo que permitirá a la institución conocer mejor a su base de usuarios y ofrecerles servicios personalizados. También facilitará la gestión y comunicación con los clientes en caso de ser necesario.

![image](https://github.com/user-attachments/assets/8012cecd-dd14-4c9a-92b8-f4c67198599e)
*La tabla "empleados" tiene como objetivo almacenar la información de los empleados que trabajan en la biblioteca. Cada empleado tendrá un identificador único (id_empleado) que se generará automáticamente, y se almacenarán datos como nombre, apellido, fecha de nacimiento y nacionalidad.

El propósito de esta tabla es mantener un registro organizado del personal que labora en la biblioteca, lo que permitirá a la institución gestionar eficazmente su equipo humano.

![image](https://github.com/user-attachments/assets/bd32b514-3a89-48ac-9d67-3fd9d0fd6403)
*La tabla "editoriales" tiene como objetivo almacenar la información sobre las editoriales de los libros que forman parte del proyecto biblioteca. Esta tabla incluye campos para el ID de la editorial, nombre de la editorial, dirección de la editorial, teléfono de contacto y sucursal (si aplica). Al utilizar esta tabla, se puede mantener un registro organizado y completo de las editoriales con las que trabaja la biblioteca

![image](https://github.com/user-attachments/assets/9cbd2669-56d1-4b46-8f35-51298ebd06b5)
*La tabla "autores" es parte del proyecto de una biblioteca y almacena la información de los autores de los libros que forman parte de su colección.
El objetivo es crear una tabla llamada "autores" en la base de datos del proyecto de la biblioteca. Esta tabla se utilizará para almacenar la información de los autores de los libros de la colección

![image](https://github.com/user-attachments/assets/9053bb12-4c11-430f-a1fa-669e6af0b62e)
*La tabla "libros" en el proyecto de la biblioteca se crea con el objetivo de almacenar información detallada sobre los libros disponibles en la colección.
Además, se establecen dos restricciones FOREIGN KEY (claves foráneas) que relacionan las columnas "id_autor" e "id_editorial" con las tablas "autores" y "editoriales", respectivamente. Estas restricciones aseguran que solo se puedan ingresar valores válidos en las columnas referenciadas, evitando así inconsistencias en los datos relacionados a autores y editoriales.
En resumen, esta tabla permitirá gestionar y consultar información detallada sobre los libros disponibles en la biblioteca, incluyendo detalles sobre sus autores, editoriales y disponibilidad.

![image](https://github.com/user-attachments/assets/8f9ac700-77ce-4b32-b65f-49a6ee8f02f4)
*La tabla "prestamos" se utiliza para registrar los préstamos de libros a clientes por parte de los empleados de una biblioteca.
El objetivo de esta tabla es mantener un registro organizado y preciso de todos los préstamos realizados en la biblioteca, permitiendo un seguimiento adecuado y evitando conflictos o errores en la gestión de los libros prestados. Además, las claves foráneas aseguran la integridad referencial con las tablas de clientes, empleados y libros, garantizando que solo se puedan registrar préstamos asociados a registros válidos en esas tablas relacionadas.

![image](https://github.com/user-attachments/assets/b38f46da-7c08-4544-a1ed-cdb71a260e6a)
*La tabla "biblioteca" se utiliza para almacenar información sobre las bibliotecas y los libros que tienen en su colección
El objetivo de esta tabla es mantener un registro organizado y preciso de las bibliotecas, así como vincular los libros específicos que forman parte de su colección. Al utilizar una clave foránea para referenciar los libros, se asegura la integridad referencial con la tabla "libros", garantizando que solo se puedan registrar libros asociados a registros válidos en esa tabla relacionada.

![image](https://github.com/user-attachments/assets/014655ab-d250-4132-a015-525fc0c5f85e)
*La tabla "venta_libros" se utiliza para almacenar información sobre las ventas de libros en una biblioteca o tienda de libros.
El objetivo de esta tabla es mantener un registro detallado de las ventas de libros, incluyendo información específica como el título, precio de venta y costo del libro para la biblioteca o tienda.

![image](https://github.com/user-attachments/assets/745339fb-a0d3-47f5-83ea-f1efa743fe9b)
*La tabla categorias está diseñada para almacenar información sobre las diferentes categorías o géneros asociados con los libros en una base de datos
El objetivo principal de la tabla categorias es organizar los libros en diferentes categorías o géneros. Esto permite una clasificación eficiente de los libros, facilitando búsquedas, filtrado y la organización de los datos en función de las categorías a las que pertenecen los libros. La relación con la tabla libros asegura que cada categoría esté asociada con al menos un libro.

#VISTAS

![image](https://github.com/user-attachments/assets/05abf89e-bf5c-4c25-beea-a825e8aaf6fc)
*La vista vista_clientes se ha creado para proporcionar una forma simplificada y específica de acceder a la información básica de los clientes en una base de datos. Esta vista se centra en mostrar solo ciertos campos clave del cliente: nombre, apellido, y mail.

![image](https://github.com/user-attachments/assets/6bfc45cc-014a-4a95-b347-a88c3ed0064e)
*La vista vista_autores se ha creado con el fin de proporcionar un acceso simplificado y enfocado a información clave sobre los autores en una base de datos, específicamente sus nombres y nacionalidades.

![image](https://github.com/user-attachments/assets/68922cc4-59a9-4505-843d-12926edb98d9)
*La vista vista_editoriales se ha creado para proporcionar un acceso simplificado y directo al nombre de las editoriales registradas en la base de datos.

![image](https://github.com/user-attachments/assets/34ef23f5-2fba-4247-a907-08bdce480a4d)
*La vista vista_empleados se ha creado para ofrecer un acceso simplificado y enfocado a la información básica de los empleados, específicamente sus nombres y nacionalidades.

![image](https://github.com/user-attachments/assets/9e03f7e0-501b-4f3e-a89b-ba625b7110f1)
*La vista vista_libros se ha creado con el fin de proporcionar un acceso directo y específico a la información clave de los libros en una base de datos, mostrando únicamente el identificador del libro, el título y el identificador del autor.

![image](https://github.com/user-attachments/assets/526f27bc-c95e-4833-89e0-386cbe53eea1)
*La vista vista_prestamos se ha creado para facilitar el acceso a información clave relacionada con los préstamos de libros en una base de datos

#PROCEDIMIENTOS ALMACENADOS

![image](https://github.com/user-attachments/assets/2135b591-3b29-4016-b0a0-70b64ffac482)
*El procedimiento almacenado sp_get_clientes() se ha diseñado para simplificar y centralizar el proceso de obtener todos los registros de la tabla clientes en una base de datos.

![image](https://github.com/user-attachments/assets/ac1ae07f-a456-4de8-ad52-24249752beb8)
*El objetivo principal del procedimiento sp_get_editoriales() es proporcionar una manera eficiente, centralizada y consistente de recuperar todos los registros de la tabla editoriales en la base de datos, facilitando su uso y mantenimiento en aplicaciones o scripts.

![image](https://github.com/user-attachments/assets/2c2a0232-45cc-4f78-8cfa-3e01a5498f9d)
*El objetivo principal de sp_get_autores() es proporcionar una forma eficiente, centralizada y consistente de recuperar todos los registros de la tabla autores, simplificando el proceso de consulta y mejorando el mantenimiento y la seguridad en el acceso a los datos.

![image](https://github.com/user-attachments/assets/2e49536f-0634-486a-8f76-6154b9287028)
*El objetivo principal de sp_get_libros() es proporcionar una manera eficiente, estandarizada y centralizada para recuperar todos los registros de la tabla libros, facilitando el acceso y el mantenimiento de los datos, mientras se asegura consistencia y seguridad en el proceso.

#FUNCIONES

![image](https://github.com/user-attachments/assets/be5d58ee-1709-4d14-88c0-73f607a6f65b)
*El objetivo principal de fn_ganancia_neta es proporcionar una herramienta para calcular de manera precisa la ganancia neta de una venta de libro específica, basándose en el precio de venta y el costo del libro

![image](https://github.com/user-attachments/assets/c886ccf9-d4ef-4622-a9a5-e643269a0010)
*El objetivo principal de fn_cantidad_libros_prestados es proporcionar una forma eficiente de calcular y obtener el número total de libros que un cliente ha prestado. Esto ayuda a gestionar y analizar el historial de préstamos de clientes en la base de datos, facilitando el seguimiento de la actividad de préstamo por cliente.

#TRIGGER

![image](https://github.com/user-attachments/assets/a31e4a98-95b3-4002-952e-325237adb64e)
*El trigger tr_cliente_insert se ha creado para registrar automáticamente las inserciones de nuevos registros en la tabla clientes. Este trigger asegura que cada vez que se inserte un nuevo cliente en la tabla clientes, se realice una acción adicional para registrar esta inserción en otra tabla.

![image](https://github.com/user-attachments/assets/96257bb6-ef6a-4b80-ad56-26b9697e58a4)
*El objetivo principal de after_insert_libros es mantener actualizada la cantidad de libros en la tabla autores cada vez que se inserta un nuevo libro en la tabla libros. Esto asegura que la información sobre el número de libros de cada autor esté siempre actualizada

