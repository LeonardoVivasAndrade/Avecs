# Avecs
Administración de Visitas Empresariales del Programa Comunicación Social UFPS (AVECS 2.0)

### Table of Contents
1. [General](#general)
2. [Tecnologías](#tecnologías)
3. [Instalación](#instalación)
4. [Mejoras](#mejoras)
5. [Correcciones](#correcciones)
6. [Colaboración](#colaboración)

### General
* App Web para gestionar las visitas empresariales realizadas en el programa académico de Comunicación Social de la Universidad Francisco de Paula Santander, el proyecto se realizó como requisito de la Materia Administración de Proyectos Informáticos. Se gestionan 3 tipos de usuario, el administrador quien es el rol de Director del programa, este usuario puede visualizar las visitas realizadas, sus actividades y estudiantes que participaron, también puede aprobar solicitudes de visitas empresariales próximas a realizarse, el usuario docente se encarga de gestionar la información necesaria sobre la visita empresarial como permisos y actividades a realizar, también puede aprobar estudiantes que se postulan, y por último el usuario Estudiante, quien puede ver las visitas a las que ha participado con sus actividades y también puede postularse a visitas empresariales que se encuentren disponibles.



### Capturas

![image](https://user-images.githubusercontent.com/46111379/144775979-56440480-eec2-4917-bd94-70826f2e9755.png)

![image](https://user-images.githubusercontent.com/46111379/144776013-c292e8da-9cf1-4db1-82c6-8fbd93567d20.png)

![image](https://user-images.githubusercontent.com/46111379/144776037-cc55f74d-d714-4831-b39f-8450b2a0bc5a.png)

![image](https://user-images.githubusercontent.com/46111379/144776110-0d4b9b4d-4977-4aec-926c-91bb10e674fb.png)



### Tecnologías
***
Lista de tecnologias utilizadas en la realiación del proyecto:
* [Java](https://www.oracle.com/java/technologies/downloads/): Version 11
* [MySQL](https://www.mysql.com/): Version 8
* [Netbeans](https://netbeans.apache.org/): Version 8.2
* [Apache Tomcat](https://tomcat.apache.org/tomcat-8.5-doc/): Version 8.5
* [Google Cloud - OAuth 2.0](https://developers.google.com/identity/protocols/oauth2)


### Instalación

***
Pasos para descargar 
```
$ git clone https://github.com/LeonardoVivasAndrade/Avecs.git
$ cd ../Avecs
```

*** 
Pasos para configurar la base de datos
* Ubicar el archivo avecsdb_v7.4.sql
* Desde mysql o mariadb, importar el archivo avecsdb_v7.4.sql
* Se creará la base de datos avecsdb con los siguientes usuarios. (la contraseña se encuentra encriptada con sha1hex)
* Usuario Administrador: user=angelleonardovian@ufps.edu.co  pass=1
* Usuario Docente: user=joseeduardorm@ufps.edu.co  pass=1
* Usuario Estudiante: user=estudiante@ufps.edu.co  pass=1
* Buscar la ruta de la carpeta Avecs
* Modificar la [persistencia](#persistencia)
* Run Tomcat


*** 
Pasos para importar proyecto
* Tener instalado Java 8 o superior
* Tener instalado Tomcat 8.5 u otro servidor de servlets comp GlassFish
* Desde Netbeans, seleccionar Abrir Proyecto
* Buscar la ruta de la carpeta Avecs
* Modificar la [persistencia](#persistencia)
* Run Tomcat

***
Pasos para modificar la 
### persistencia
* Ubicar el archivo src/conf/persistence.xml
* Modificar la propiedad url de la bd: value="jdbc:mysql://localhost:3306/Avecsdb?zeroDateTimeBehavior=convertToNull"
* Modificar la propiedad user de la bd: value="USUARIO_BD"
* Modificar la propiedad password de la bd: value="PASSWORD_BD"

***
Pasos para desplegar en un servidor web java
* Utilizar el archivo dist/ROOT.war
* Desplegar el archivo en un servidor Tomcat 8.5 u otro servidor de servlets.


### Mejoras
***
* Diseño frontend con colores similares al diseño web de la UFPS.
* El estudiante ahora puede visualizar las actividades de la visita empresarial.


### Correcciones
***
* Se soluciona bug en la carga de actividades de las visitas empresariales.
* Se soluciona bug en el boton Postular en un estudiante que no se encuentra postulado en la visita empresarial actual.


### Colaboración
***
Equipo de trabajo
* [Jose Eduardo Rozo](https://github.com/joseedye) v2.0
* [Angel Vivas](https://github.com/LeonardoVivasAndrade) v2.0
* Ana Cardenas v2.0
* Angela Acevedo v1.7
* Miguel Páez v1.7
* Juan Ortiz v1.7
* Yeison Barbosa v1.7
* Karen Ontiveros v1.7

