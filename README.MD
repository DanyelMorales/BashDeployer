# Acerca

Esta herramienta automatiza las siguientes fases de entrega a un servidor concreto de proyectos Dropwizard. Fue construido utilizando Bash por lo que puede correr en windows  con algún emulador o interprete de bash.

Las conexiones son mediante SSH por lo tanto se requerirá las credenciales para este tipo de conexión; Considerando lo anterior será común que durante los inicios de cada etapa de lanzamiento se solicite la credencial de acceso al servidor tanto para la conexión como para aplicar SUDO, ya que por seguridad no se almacena estos datos en el archivo de configuración.

### Configuración

Es necesario configurar las conexiones de la herramienta para ello es necesario editar el archivo  config/config.cfg, el cual posee los siguientes indices:

```ini
#!/bin/bash
# CONNECTION
port="9510"
user="dapson"
host="127.0.0.1"

# JAR TO DEPLOY
sourcePath="/C/Users/DAPSON/projects/anyproj/target/"
sourceFile="anyproj.jar"
destPath="/opt/anyproj/target/"
kewyword="anyproj"

# dropwizard commands
dropwizardc="server"
dropwizardconfig="config.yml"
```

| CMD              | DESCRIPTION                              |
| :--------------- | ---------------------------------------- |
| sourceFile       | Nombre del Jar que se desea publicar.    |
| destPath         | Destino donde se desea ubicar el Jar en el servidor. |
| kewyword         | Palabra de identificación para asesinar los procesos activos del jar, ej: crm |
| dropwizardc      | Comando que se incrusta en la ejecución del jar. |
| dropwizardconfig | Nombre del archivo de configuración a cargar. |
| sourcePath       | Ubicación local del archivo a cargar, puede variar el formato dependiendo de la consola, en MINGW64 se utiliza  "/C/ruta/a/carpeta" |
| port             | Puerto de conexión SSH                   |
| user             | Usuario SSH                              |
| host             | Servidor SSH                             |

#### uso

```powershell
./deploy.sh
```

