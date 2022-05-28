# MISO_PRUEBAS Grupo 38

Integrantes:
* Daniel Vivas Suarez d.vivass@uniandes.edu.co
* Mateo Olaya Osorio m.olaya11@uniandes.edu.co

# Dado que el grupo es de dos personas, la estrategia de pruebas tuvo en cuenta el tiempo de dos tester senior.
# Enlace estrategia de pruebas
[Enlace estrategia de pruebas](https://uniandes-my.sharepoint.com/:w:/g/personal/m_olaya11_uniandes_edu_co/EXcuxM_z7LpDsQ8N5aQxrKoBk01rzW9Rn4Erbt-x429y3Q?e=fFAVuS)

# Inventario de pruebas manuales
[Enlace Inventario de pruebas](https://uniandes-my.sharepoint.com/:x:/g/personal/m_olaya11_uniandes_edu_co/EcWmfoiyKzNErRIPoy_fxocB67wWsyoP-3PDrX_HZoliVA?e=JeuobZ)

## Cómo ejecutar los tests

Se utiliza la versión de ghost 4.41.3 y la 4.39 para realizar el VRT según la recomendación para utilizar verisones que no difieran mucho de su interfaz gráfica

Pre-requisitos:
* Instalar y ejecutar la versión 4.41.3 de ghost, para ello se puede ejecutar el siguiente comando mediante docker

```
  docker run -d -e url=http://localhost:3001 -p 3001:2368 --name ghost_4.41 ghost:4.41

  //Esto desplegará en la siguiente dirección la versión de Ghost Admin:

  //Ghost 4.41
  http://localhost:3001/ghost
```

* Instalar la versión 4.39 de ghost, para ello se puede ejecutar el siguiente comando mediante docker
`ghost install 4.39 --local`

```
  docker run -d -e url=http://localhost:3002 -p 3002:2368 --name ghost_4.39 ghost:4.39

  //Esto desplegará en la siguiente dirección la versión de Ghost Admin:

  //Ghost 4.39
  http://localhost:3002/ghost
```

* Tener una versión LTS de node reciente (preferiblemente v16.15.0) y una versión compatible de npm

* Instalar adb en sus sitema operativo
  
* Ejecutar `npm install` en la carpeta en la que se clonó este repositorio


## Correr modo pruebas de regresion visual en Ghost v4.41
**Para que el reporte funcione se debe correr caso por caso de pruebas, NO todos al tiempo**


** En el archivo index.js aparecen comentados casos de pruebas, si se desea ver el reporte de todos quitar el comentario de la lista `functionalities` ubicado en la linea 13 **

En el archivo `cypress.json` debe estar la siguiente configuración. Se puede verificar que se está ejecutando en modo pruebas de regresión visual con la siguiente configuración.

```
  {
  "testFiles": "**/*.feature",
  "env": {
    "url_admin": "http://localhost:3001/ghost/",
    "admin_email": "test_ghost_g13@gmail.com",
    "admin_password": "prueba123123",
    "ghost_url": "http://localhost:3001/",
    "vrtActive": true     //Esto es para que se ejecute  el modo de pruebas de regresión visual, cambiar a false si no se desea
  },
  "screenshotsFolder": "cypress/screenshots_4-41",
  "viewportHeight": 1080,
  "viewportWidth": 1920
}
```
## Correr modo pruebas de regresion visual en Ghost v4.39
**Para que el reporte funcione se debe correr caso por caso de pruebas, NO todos al tiempo**
En el archivo `cypress.json` debe estar la siguiente configuración. Se puede verificar que se está ejecutando en modo pruebas de regresión visual con la siguiente configuración.
```
  {
  "testFiles": "**/*.feature",
  "env": {
    "url_admin": "http://localhost:3002/ghost/",
    "admin_email": "test_ghost_g13@gmail.com",
    "admin_password": "prueba123123",
    "ghost_url": "http://localhost:3002/",
    "vrtActive": true
  },
  "screenshotsFolder": "cypress/screenshots_4-39",
  "viewportHeight": 1080,
  "viewportWidth": 1920
}
```
# Generar reporte de pruebas
Para correr el reporte de pruebas se debe ejecutar el comando `node index.js` en la raíz del proyecto
Ir a la ruta *./results/< Fecha actual >/report.html* y se verá el reporte de las pruebas

# Cypress
* Ejecutar el comando `npm run cypress:open` en la raíz del proyecto
* Hacer click en el archivo de pruebas que se desea ejecutar
