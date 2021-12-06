# Avecs
Administración de Visitas Empresariales del Programa Comunicación Social UFPS (AVECS)

### Table of Contents
1. [General](#general)
2. [Tecnologías](#tecnologías)
3. [Instalación](#instalación)
4. [Colaboración](#colaboración)

### General
* App Web para gestionar las visitas empresariales realizadas en el programa académico de Comunicación Social de la Universidad Francisco de Paula Santander, el proyecto se realizo dentro de la Materia Administración de Proyectos Informáticos.

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


### Colaboración
***
Equipo de trabajo
* [Jose Eduardo Rozo](https://github.com/joseedye)
* [Angel Vivas](https://github.com/LeonardoVivasAndrade)
* Ana Cardenas
* Angela Acevedo
* Miguel Páez
* Juan Ortiz
* Yeison Barbosa
* Karen Ontiveros

