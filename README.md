# PruebaDesarrollador

Para Arrancar el código es necesario realizar la instalación de 2 programas:
-- El primero de ellos es spring Boot para eclipse el cual se puede instalar desde la página oficial de Spring
https://spring.io/tools

-- El segundo programa es Mysql workbench para trabajar la base de datos el cual se puede instalar desde la página oficial de Mysql
https://dev.mysql.com/downloads/workbench/


# Base de datos
Luego de tener instalados los programas procedemos a crear la base de datos. En Mysql workbench abrimos una nueva conexión y creamos la base de datos de la siguiente manera

-- Ejecutamos
   CREATE DATABASE transporte;
-- Después vamos al archivo BaseDeDatosTransporte.sql que se encuentra en la raíz de este repositorio y ejecutamos todo el SQL para crear tablas relaciones y datos

# Fuentes Desarrollo
una vez creada la base de datos abrimos el framework spring Boot

-- Damos clic en file - Open projects from file system. seleccionamos el directorio que es la carpeta principal de este repositorio "PruebaJavaDesarrollador"
-- Vamos al siguiente archivo de propiedades: src\main\resources\application.properties.
   En este archivo es necesario configurar las siguientes propiedades
   -- spring.datasource.url=solo se debe cambiar la ip en la que quedo montada la base de datos Mysql
   -- spring.datasource.username=  usuario configurado en la instalacion de Mysql workbench
   -- spring.datasource.password=  contraseña configurada en la instalacion de Mysql workbench
-- Ejecutamos el proyecto dando clic en el icono de ejecutar

# Ejecicion
Vamos al navegador en la siguiente ruta: http://localhost:8080/CrearEmpresas
en este módulo se pueden crear empresas nuevas en la BD

