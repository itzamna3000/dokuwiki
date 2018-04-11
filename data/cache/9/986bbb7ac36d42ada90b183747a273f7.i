a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:1034:"<h2>Ajuste de permisos para trabajos en el clúster</h2>

<p>Es importante ajustar los permisos de los archivos que se van a mandar a procesar al clúster, especificando la capacidad de escribir y leer para el grupo y ademas que el grupo sea fmriuser o bioinfo.</p>

<p>Para asignar el grupo, sea fmriuser o bioinfo a una carpeta, subcarpetas y los archivos que contenga se puede usar el comando:</p>

<pre><code>chown -R usuario:grupo carpeta/
</code></pre>

<blockquote>
  <p>Nota:<br />
  Puede ocurrir que no se pueda cambiar el grupo si no somos los dueños de la
  carpeta en cuestión. Si es necesario ajustar el grupo y por alguna razón no
  funciona el comando, el administrador del equipo en cuestión puede realizar el cambio.</p>
</blockquote>

<p>En la terminal el comando para permitir escritura y lectura al grupo es:</p>

<pre><code> chmod -R g+rwx carpeta/
</code></pre>

<p>De modo gráfico se puede hacer como lo muestra el siguiente gif animado:</p>

<p><img src="./data/pages/permisos.gif" alt="Permisos" /></p>
";}i:2;i:3;i:3;s:896:"
## Ajuste de permisos para trabajos en el clúster

Es importante ajustar los permisos de los archivos que se van a mandar a procesar al clúster, especificando la capacidad de escribir y leer para el grupo y ademas que el grupo sea fmriuser o bioinfo. 

Para asignar el grupo, sea fmriuser o bioinfo a una carpeta, subcarpetas y los archivos que contenga se puede usar el comando:

    chown -R usuario:grupo carpeta/

> Nota:   
Puede ocurrir que no se pueda cambiar el grupo si no somos los dueños de la
carpeta en cuestión. Si es necesario ajustar el grupo y por alguna razón no
funciona el comando, el administrador del equipo en cuestión puede realizar el cambio.

En la terminal el comando para permitir escritura y lectura al grupo es:

     chmod -R g+rwx carpeta/

De modo gráfico se puede hacer como lo muestra el siguiente gif animado:

![Permisos](./data/pages/permisos.gif)


";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:907;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:907;}}