a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:1696:"<h1>¿Que es el Home?...</h1>

<p>El home es un espacio que tiene cada usuario, es el lugar donde nos encontramos
al iniciar sesión. Y suele tener permisos de <strong>escritura/lectura</strong> esclusivos para
el usuario al que pertenece. Tambien en este espacio suelen residir los
archivos de configuración esclusivos para el usuario.</p>

<h1>¿Donde esta?</h1>

<p>En la estructura de los sistemas <strong>Unix</strong> suelen encontrarse en la dirección</p>

<pre><code> /home/usuario
</code></pre>

<p>Pero en el cluster del laboratorio, la ruta correcta es:</p>

<pre><code>/home/inb/usuario
</code></pre>

<p>Donde usuario es sustituido por el usuario en curso. Se puede acceder mediante</p>

<h4>Ruta absoluta</h4>

<pre><code> cd /home/inb/usuario
</code></pre>

<h4>Ruta con "wildcard" (comodín)</h4>

<pre><code>cd ~/
</code></pre>

<h4>También nos podemos trasladar usando el comando cd sin argumentos</h4>

<pre><code>cd 
</code></pre>

<p>O sea, los tres formatos del comando <strong>cd</strong> tienen la misma función.</p>

<p>En el caso de los equipos que forma parte del clúster, el directorio home se
encuentra fisicamente en el servidor central.</p>

<h1>Y... ¿que le pongo?</h1>

<p>Es importate señalar  que debido a la configuración de
<a href="?id=datos">respaldo</a> y <a href="?id=datoscluster">almacenamiento</a> del clúster es
recomendable que en esta carpeta no se coloquen archivos de gran tamaño. Dando
preferencía a archivos como scripts, archivos de configuración, documentos. En
el caso de quere guardar archivos que se consideren grandes y que no se deseen
respaldar se puede recurrir al uso de la carpeta <a href="?id=temporal">temporal</a>.</p>
";}i:2;i:3;i:3;s:1449:"
# ¿Que es el Home?...

El home es un espacio que tiene cada usuario, es el lugar donde nos encontramos
al iniciar sesión. Y suele tener permisos de __escritura/lectura__ esclusivos para
el usuario al que pertenece. Tambien en este espacio suelen residir los
archivos de configuración esclusivos para el usuario.

# ¿Donde esta?

En la estructura de los sistemas **Unix** suelen encontrarse en la dirección
     
     /home/usuario

Pero en el cluster del laboratorio, la ruta correcta es:

    /home/inb/usuario

Donde usuario es sustituido por el usuario en curso. Se puede acceder mediante

#### Ruta absoluta

     cd /home/inb/usuario

#### Ruta con "wildcard" (comodín)

    cd ~/

#### También nos podemos trasladar usando el comando cd sin argumentos

    cd 
  
O sea, los tres formatos del comando **cd** tienen la misma función.

En el caso de los equipos que forma parte del clúster, el directorio home se
encuentra fisicamente en el servidor central.




# Y... ¿que le pongo?

Es importate señalar  que debido a la configuración de
[respaldo](?id=datos) y [almacenamiento](?id=datoscluster) del clúster es
recomendable que en esta carpeta no se coloquen archivos de gran tamaño. Dando
preferencía a archivos como scripts, archivos de configuración, documentos. En
el caso de quere guardar archivos que se consideren grandes y que no se deseen
respaldar se puede recurrir al uso de la carpeta [temporal](?id=temporal).

";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:1460;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1460;}}