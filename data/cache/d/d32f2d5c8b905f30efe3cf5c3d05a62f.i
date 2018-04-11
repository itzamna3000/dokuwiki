a:8:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Secure SHell: ssh";i:1;i:1;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:34;}i:4;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:4753:"<p>El protocolo <strong><abbr title="Secure SHell">ssh</abbr></strong> o <em>Secure SHell</em> por sus siglas, permite el acceso remoto
a un equipo en red con un manejo total de este. Este interprete de comandos
puede incluso redirigir las X (interfaz gráfica) y tráfico de red. Es un
protocolo relativamente seguro ya que el tráfico de datos viaja de manera
encriptada entre los equipos.</p>

<p>En particular el uso de este protocolo  permite acceder a los diferentes
equipos en el clúster.  Esto es recomendable, por ejemplo, para organizar datos
que se encuentren en determinado equipo, desde el equipo en cuestión. Por lo
que mover archivos y cambiar permisos se vuelve una tarea local y por lo tanto
el ancho de banda queda libre de estos procedimientos.</p>

<p>El comando a ejecutar tiene un arreglo básico:</p>

<pre><code> ssh usuario@equipo
</code></pre>

<p>Este comando se puede modificar en el caso de que se quiera usar la interfaz gráfica a travez de la red. Una vez realizada la conexión es necesario usar <a href="?id=basicos">comandos de bash</a> para interactuar con el equipo.</p>

<pre><code>ssh -X usuario@equipo
</code></pre>

<blockquote>
  <p><strong>Nota:</strong><br />
   Este comando permite el uso de programas en modo gráfico. Sin embargo la velocidad de conexión entre los equipos debe ser rapida. De lo contrario la interfaz es muy lenta. Incluso puede ejecutarse fuera de la red interna pero nuevamente sera muy lenta la interacción si la conexión es de baja velocidad.</p>
</blockquote>

<p>Si se desea crear un tunnel se usa el comando</p>

<pre><code>ssh -D ##### usuario@equipo
</code></pre>

<p>Donde se sustituye el ##### por el número de puerto a usar.</p>

<p>Este comando permite generar un tunel al que se puede redirigir el tráfico del
navegador local para poder acceder a internet a traves de la red del instituto
e interactuar con el clúster.</p>

<p>Por ultimo, como ya se ha mencionado la conexión puede hacerse de manera externa al instituto. El usuario y contraseña son los que se usan en sesiones normales. Para conectarse de manera externa al instituto se requiere la dirección para realizar la conexión.</p>

<h1>Transferir archivos</h1>

<p>Es posible transferir archivos de manera sencilla entre los equipos, tan solo poniendo el contenido en la carpeta de datos que nos corresponde.</p>

<p>Sin embargo es puede transferir archivos entre computadoras usando como base el protocolo <abbr title="Secure SHell">ssh</abbr>.</p>

<p>El comando básico de transferencia es <code>scp</code>, este comando transfiere datos de manera segura a cualquier zona del equipo objetivo donde tengamos permisos de escritura. Permite enviar algún archivo o directorio , así como descargar un archivo o directorio.</p>

<h2>Envio de archivo</h2>

<pre><code>scp archivo usuario@equipo:/carpetadestino/
</code></pre>

<h2>Descarga de archivo</h2>

<pre><code>scp usuario@equipo:/carpetaorigen/ /carpetadestino/archivo
</code></pre>

<p>Sin embargo este comando no permite resumir una descarga interrumpida y es básicamente una copia segura. En caso de querer resumir una descarga o poder hacer un copia que seleccione los archivos nuevos, es mejor el uso del comando <code>rsync</code>. Rsync permite la copia de un archivo a traves de conexiones seguras, así como de conexiones sin encriptación.</p>

<p>En el caso de una conexión sin encriptación solo se usa el comando que no declara el protocolo.</p>

<h2>Para copiar un archivo a la carpeta destino</h2>

<pre><code>rsync -auvzh /carpetaorigen/archivo /carpetadestino/
</code></pre>

<h2>Si se quiere copiar todo el directorio</h2>

<pre><code>rsync -auvzh /carpetaorigen /carpetadestino/
</code></pre>

<p>Esto copiaría la <code>carpetaorigen</code> completa en la carpeta destino.
Para hacer las transferencias a traves de <abbr title="Secure SHell">ssh</abbr>:</p>

<h2>Para copiar un archivo a la maquina remota</h2>

<pre><code>rsync -e 'ssh' /carpetaorigen/archivo usuario@equipo:/carpetadestino/
</code></pre>

<h2>Para copiar la carpeta completa a la maquina remota</h2>

<pre><code>rsync -e 'ssh' /carpetaorigen usuario@equipo:/carpetadestino/
</code></pre>

<h2>Para copiar un archivo del equipo remoto a la carpeta local</h2>

<pre><code>rsync -e 'ssh' usuario@equipo:/carpetaorigen/archivo /carpetadestino/
</code></pre>

<h2>Para copiar la carpeta completa del equipo remoto a la carpeta local</h2>

<pre><code>rsync -e 'ssh' usuario@equipo:/carpetaorigen /carpetadestino/
</code></pre>

<h1><a href="?id=keygen"><abbr title="Secure SHell">ssh</abbr>-keygen</a></h1>

<p>Es un utilidad que permite generar, administrar y convertir llaveros de autentificación para el protocolo <abbr title="Secure SHell">ssh</abbr>.</p>
";}i:2;i:3;i:3;s:4086:"
*[ssh]:Secure SHell
El protocolo __ssh__ o _Secure SHell_ por sus siglas, permite el acceso remoto
a un equipo en red con un manejo total de este. Este interprete de comandos
puede incluso redirigir las X (interfaz gráfica) y tráfico de red. Es un
protocolo relativamente seguro ya que el tráfico de datos viaja de manera
encriptada entre los equipos.

En particular el uso de este protocolo  permite acceder a los diferentes
equipos en el clúster.  Esto es recomendable, por ejemplo, para organizar datos
que se encuentren en determinado equipo, desde el equipo en cuestión. Por lo
que mover archivos y cambiar permisos se vuelve una tarea local y por lo tanto
el ancho de banda queda libre de estos procedimientos.

El comando a ejecutar tiene un arreglo básico:

     ssh usuario@equipo

Este comando se puede modificar en el caso de que se quiera usar la interfaz gráfica a travez de la red. Una vez realizada la conexión es necesario usar [comandos de bash](?id=basicos) para interactuar con el equipo.

    ssh -X usuario@equipo

>  __Nota:__   
 Este comando permite el uso de programas en modo gráfico. Sin embargo la velocidad de conexión entre los equipos debe ser rapida. De lo contrario la interfaz es muy lenta. Incluso puede ejecutarse fuera de la red interna pero nuevamente sera muy lenta la interacción si la conexión es de baja velocidad.

Si se desea crear un tunnel se usa el comando 

    ssh -D ##### usuario@equipo

Donde se sustituye el ##### por el número de puerto a usar.

Este comando permite generar un tunel al que se puede redirigir el tráfico del
navegador local para poder acceder a internet a traves de la red del instituto
e interactuar con el clúster.


Por ultimo, como ya se ha mencionado la conexión puede hacerse de manera externa al instituto. El usuario y contraseña son los que se usan en sesiones normales. Para conectarse de manera externa al instituto se requiere la dirección para realizar la conexión.

# Transferir archivos

Es posible transferir archivos de manera sencilla entre los equipos, tan solo poniendo el contenido en la carpeta de datos que nos corresponde.

Sin embargo es puede transferir archivos entre computadoras usando como base el protocolo ssh.

El comando básico de transferencia es `scp`, este comando transfiere datos de manera segura a cualquier zona del equipo objetivo donde tengamos permisos de escritura. Permite enviar algún archivo o directorio , así como descargar un archivo o directorio.

## Envio de archivo

    scp archivo usuario@equipo:/carpetadestino/

## Descarga de archivo

    scp usuario@equipo:/carpetaorigen/ /carpetadestino/archivo

Sin embargo este comando no permite resumir una descarga interrumpida y es básicamente una copia segura. En caso de querer resumir una descarga o poder hacer un copia que seleccione los archivos nuevos, es mejor el uso del comando `rsync`. Rsync permite la copia de un archivo a traves de conexiones seguras, así como de conexiones sin encriptación.

En el caso de una conexión sin encriptación solo se usa el comando que no declara el protocolo.

## Para copiar un archivo a la carpeta destino

    rsync -auvzh /carpetaorigen/archivo /carpetadestino/

## Si se quiere copiar todo el directorio

    rsync -auvzh /carpetaorigen /carpetadestino/

Esto copiaría la `carpetaorigen` completa en la carpeta destino.
Para hacer las transferencias a traves de ssh:

## Para copiar un archivo a la maquina remota

    rsync -e 'ssh' /carpetaorigen/archivo usuario@equipo:/carpetadestino/

## Para copiar la carpeta completa a la maquina remota

    rsync -e 'ssh' /carpetaorigen usuario@equipo:/carpetadestino/

## Para copiar un archivo del equipo remoto a la carpeta local

    rsync -e 'ssh' usuario@equipo:/carpetaorigen/archivo /carpetadestino/

## Para copiar la carpeta completa del equipo remoto a la carpeta local

    rsync -e 'ssh' usuario@equipo:/carpetaorigen /carpetadestino/
  


# [ssh-keygen](?id=keygen)
Es un utilidad que permite generar, administrar y convertir llaveros de autentificación para el protocolo ssh.

";}i:2;i:44;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:4130;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4143;}i:7;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4143;}}