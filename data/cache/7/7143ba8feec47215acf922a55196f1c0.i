a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:1479:"<h3>Cambio de versión de <abbr title="FMRIB Software Library">FSL</abbr></h3>

<p>Para cambiar una versión de <abbr title="FMRIB Software Library">FSL</abbr> se pueden usar alias dentro de una terminal en nuestra sesión.</p>

<p>La combinación de teclas para el acceso directo a la terminal es:</p>

<pre><code>Ctrl+Alt+t
</code></pre>

<p>Esto abre una ventana en nuestra sesión gráfica actual. En ella esta definido por default <abbr title="FMRIB Software Library">FSL</abbr> 4. Para cambiar a <abbr title="FMRIB Software Library">FSL</abbr> 5 el alias a usar es:</p>

<pre><code>fsl5
</code></pre>

<p>A su vez para regresar a que <abbr title="FMRIB Software Library">FSL</abbr> 4 se usa:</p>

<pre><code>fsl4
</code></pre>

<h3>Cambiar a <abbr title="FMRIB Software Library">FSL</abbr> 5 por default</h3>

<p>Si lo que deseamos es mantener <abbr title="FMRIB Software Library">FSL</abbr> 5 como la versión determinada, necesitamos modificar el archivo <strong>.bashrc</strong> este es el archivo que maneja nuestras configuraciones. Podemos modificarlo con</p>

<pre><code>gedit ~/.bahsrc
</code></pre>

<p>A este archivo es necesario agregar al final</p>

<pre><code>export FSL5_SETUP_FILE=/home/inb/lconcha/fmrilab_software/tools/setup_fsl5
source $FSL5_SETUP_FILE
</code></pre>

<p>Así cada vez que iniciemos sesión el <abbr title="FMRIB Software Library">FSL</abbr> predeterminado será el <strong><abbr title="FMRIB Software Library">FSL</abbr> 5</strong>.</p>
";}i:2;i:3;i:3;s:935:"
*[FSL]:  FMRIB Software Library

### Cambio de versión de FSL

Para cambiar una versión de FSL se pueden usar alias dentro de una terminal en nuestra sesión. 

La combinación de teclas para el acceso directo a la terminal es:

    Ctrl+Alt+t

Esto abre una ventana en nuestra sesión gráfica actual. En ella esta definido por default FSL 4. Para cambiar a FSL 5 el alias a usar es:

    fsl5

A su vez para regresar a que FSL 4 se usa:

    fsl4

### Cambiar a FSL 5 por default

Si lo que deseamos es mantener FSL 5 como la versión determinada, necesitamos modificar el archivo __.bashrc__ este es el archivo que maneja nuestras configuraciones. Podemos modificarlo con 

    gedit ~/.bahsrc

A este archivo es necesario agregar al final 

    export FSL5_SETUP_FILE=/home/inb/lconcha/fmrilab_software/tools/setup_fsl5
    source $FSL5_SETUP_FILE

Así cada vez que iniciemos sesión el FSL predeterminado será el __FSL 5__.

";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:946;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:946;}}