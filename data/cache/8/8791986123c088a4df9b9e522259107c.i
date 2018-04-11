a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:2434:"<h1>/misc</h1>

<h2>Primero: crear tu carpeta de usuario</h2>

<p>En principio la carpeta <strong>/misc</strong> que se encuentra en la raiz de todos los
equipos. En esta carpeta se encuentran carpetas con los nombres de los equipos
y por lo tanto con acceso a cada uno de ellos.</p>

<p>Por ejemplo la carpeta <strong>/misc/tanner</strong> se encuentra fisicamente en el equipo
<strong>tanner</strong>, pero se encuentra disponible en cualquier equipo que forme parte
del clúster.</p>

<p>Dentro de estas carpetas se encuentran directorios que pertenecen a los
usuarios designados a usar ese espacio del equipo.</p>

<p>Es muy importante que los usuarios graben sus datos a procesar y sus resultados en alguna carpeta dentro de <strong>/misc</strong> utilizando la siguiente nomenclatura:</p>

<pre><code>   /misc/__host__/__usuario__
</code></pre>

<p>donde <strong>host</strong> es el nombre de la máquina que físicamente tiene el disco duro. Se recomienda que sea la que normalmente se usa físicamente. Ejemplos son tournoux, fourier, tanner, etc. Nombrando la carpeta <strong>usuario</strong> facilitamos la tarea de saber cuántos datos tiene cada persona en el cluster.</p>

<blockquote>
  <p>Por favor, solo se puede utilizar la carpeta <strong>/misc</strong> en el equipo que se te ha asignado. Si por alguna razón el disco esta lleno. Es posible usar temporalmente otro equipo, mientras que se reporta el problema al administrador del sistema.</p>
</blockquote>

<h3>Crear una carpeta</h3>

<p>Una vez que cuenten con Usuario/Contraseña podran crear solo una carpeta en el equipo asignado si cuentan con los permisos necesarios, el procedimiento es el siguiente:</p>

<pre><code>   mkdir /misc/nombre_del_equipo/tu_usuario
</code></pre>

<h2>Disponibilidad de datos en el clúster</h2>

<p>Ya que el trabajo en el clúster requiere que los datos se encuentre accesibles
para cualquier equipo que pueda llevar a cabo la tarea en cuestión. Los datos
deben ser colocados en carpetas que se monten en todos los equipos.</p>

<p>Para saber cuánto espacio libre hay en todos los equipos, basta abrir una terminal y escribir:</p>

<pre><code> df -h
</code></pre>

<p>Otra carpeta que permite el acceso a todos los equipos del clúster y por lo tanto es posible mandar trabajos al cluster, es la carpeta <strong>/misc/pruebas/</strong> creada para usarse, como su nombre lo indica, en pruebas que se manden al clúster.</p>
";}i:2;i:3;i:3;s:2155:"
# /misc

## Primero: crear tu carpeta de usuario
En principio la carpeta __/misc__ que se encuentra en la raiz de todos los
equipos. En esta carpeta se encuentran carpetas con los nombres de los equipos
y por lo tanto con acceso a cada uno de ellos.

Por ejemplo la carpeta __/misc/tanner__ se encuentra fisicamente en el equipo
__tanner__, pero se encuentra disponible en cualquier equipo que forme parte
del clúster.

Dentro de estas carpetas se encuentran directorios que pertenecen a los
usuarios designados a usar ese espacio del equipo.

Es muy importante que los usuarios graben sus datos a procesar y sus resultados en alguna carpeta dentro de __/misc__ utilizando la siguiente nomenclatura:

       /misc/__host__/__usuario__
  
donde __host__ es el nombre de la máquina que físicamente tiene el disco duro. Se recomienda que sea la que normalmente se usa físicamente. Ejemplos son tournoux, fourier, tanner, etc. Nombrando la carpeta __usuario__ facilitamos la tarea de saber cuántos datos tiene cada persona en el cluster.

> Por favor, solo se puede utilizar la carpeta __/misc__ en el equipo que se te ha asignado. Si por alguna razón el disco esta lleno. Es posible usar temporalmente otro equipo, mientras que se reporta el problema al administrador del sistema.
 
### Crear una carpeta
Una vez que cuenten con Usuario/Contraseña podran crear solo una carpeta en el equipo asignado si cuentan con los permisos necesarios, el procedimiento es el siguiente:

       mkdir /misc/nombre_del_equipo/tu_usuario


## Disponibilidad de datos en el clúster
Ya que el trabajo en el clúster requiere que los datos se encuentre accesibles
para cualquier equipo que pueda llevar a cabo la tarea en cuestión. Los datos
deben ser colocados en carpetas que se monten en todos los equipos.  

Para saber cuánto espacio libre hay en todos los equipos, basta abrir una terminal y escribir:

     df -h
  

Otra carpeta que permite el acceso a todos los equipos del clúster y por lo tanto es posible mandar trabajos al cluster, es la carpeta __/misc/pruebas/__ creada para usarse, como su nombre lo indica, en pruebas que se manden al clúster.


";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:2166;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2166;}}