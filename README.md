# Sistema de Consulta de Datos #

## Descripción ##
Este proyecto consiste en una aplicación para la preservación y enseñanza del idioma náhuatl desarrollada para la gestión
y consulta de datos, tomando en integrando una base de datos relacional con funcionalidades de acceso y manipulación de información.
El sistema permite visualizar y gestionar información mediante una interfaz estructurada, conectada a SQL Server Management Studio.

##  Tecnologías utilizadas ##
- C#
- ASP.NET
- SQL Server
- Bootstrap
- HTML / CSS /JS

## Instalación ##

1. Clonar el repositorio:
   git clone https://github.com/Fragment0s/AulaNet_Nahuatl

2. Configurar la cadena de conexión en:
   Web.config
   
3. Para que el servidor "ApiAulanet" pueda devolver los endpoints se debe configurar la cadena de conexión del formulario con base al numero de su puerto local:XXXX
- Puntaje.aspx.cs → cargarIndividualAPI
-  Puntaje.aspx.cs → cargarRankingAPI

## Base de datos ##

El proyecto incluye scripts de base de datos en la carpeta:

"/database"

### Archivos ##
- schema_Aulanet.sql → estructura de la base de datos
- seed_Aulanet.sql → datos de prueba (para la funcionalidad basica)

### Pasos ##
1. Abrir SQL Server
2. Ejecutar schema_Aulanet.sql
3. Ejecutar seed_Aulanet.sql
4. Verificar conexión en la aplicación


##  Funcionalidades ##
- Consulta de datos desde base de datos
- Consulta de endpoints por el servidor API en el formulario "Puntaje.aspx" y "ExamenFinal.aspx"
- Visualización estructurada de información
- Conexión a SQL Server
- Operaciones básicas CRUD 

##
 El proyecto utiliza datos de prueba
 No contiene información sensible
 Desarrollado con fines académicos
##


## Autores ##
Desarrollado por Joshua Joel Huerta Mastranzo
GitHub: https://github.com/Fragment0s  

Desarrollado por Joscelyn Paola Jiménez González
GitHub: https://github.com/JoscelynPaola  
