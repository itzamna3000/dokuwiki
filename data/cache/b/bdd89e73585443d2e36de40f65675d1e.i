a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:5285:"<h1>Comandos Básicos de Bash</h1>

<p>Bash es un interprete de comandos que viene por defecto en los sistemas <strong>Linux
y Mac</strong>.  Como su nombre lo indica este programa interpreta ordenes que el
sistema operativo llevará a cabo. Permite un control de las tareas comunes del
sistema y es de gran utilidad para la automatización de tareas.  Sin embargo
dado que el <strong>shell bash</strong> requiere el manejo fluido comandos, la curva de
aprendizaje suele ser lenta. Con la intención de facilitar su uso aquí se
listan los comandos mas comunes para las tareas cotidianas y que son la base
para el trabajo con <strong>bash</strong>.</p>

<h2>Consideraciones generales</h2>

<ul>
<li><p>Bash diferencia entre minúsculas y mayúsculas.</p></li>
<li><p>Cuando un comando incluye argumentos suele separarlos con un espacio del comando y van
precedidos por un guión. Esta organización es extensiva a casi todos los
comandos en bash. Aunque en ocasiones los comandos pueden no llevar guión.</p></li>
<li><p>Los comandos aquí mencionados dependen de los permisos de archivo y
directorios que se ejecuten
<!--Agregar link a sección de permisos --></p></li>
</ul>

<h2>man</h2>

<p>Uno de los comandos mas importantes es <strong>man</strong>.</p>

<p>Ya que este comando cuando se usa antes de casi cualquier otro comando presenta una
resumen de las funciones del comando, así como los argumentos disponibles para
el comando e incluso ejemplos.</p>

<pre><code> man ls
</code></pre>

<h2>ls</h2>

<p>Enlista los archivos y directorios que se encuentran en el directorio actual,
una forma de uso es la siguiente:</p>

<pre><code> ls -alh
</code></pre>

<p>El comando puede usar argumentos que en general llevan un espacio con respecto
al comando y van precedidos por un guión . En este caso los argumentos son :</p>

<ul>
<li>-a argumento que lista todos los archivos, incluso los archivos ocultos</li>
<li>-l el listado lo hará en formato extenso, esto incluye varias características<br />
de los archivos</li>
<li>-h que los valores de tamaño se representen en formato legible para el humano</li>
</ul>

<p>Para saber mas prueba el comando <a href="#man">man</a> antes del <strong>ls</strong>.</p>

<h2>cd</h2>

<p>Este comando  permite el cambio de directorio, acepta rutas relativas y rutas absolutas.</p>

<pre><code># Rutas completas
cd /home/usuario
cd /media/myusb

# Rutas a absolutas
cd ~/    # Cambia al directorio home
cd ../   # Cambiar al directorio superior
</code></pre>

<p>Para navegar con el comando cd, es necesario conocer la estructura del sistema.</p>

<!-- Agregar link a pagina de estructura y manejo de datos del cluster -->

<h2>mkdir</h2>

<p>Para crear un directorio se usa el comando <strong>mkdir</strong> seguido del nombre que
recibe el directorio, si se usan espacios en el nombre estos deben de llevar un
símbolo de escape (&#92;), de lo contrario se crearan tantos directorios como
palabras separadas le sigan al comando <strong>mkdir</strong></p>

<pre><code>mkdir midirectorio
</code></pre>

<p>Crea un directorio  con el nombre <strong>midirectorio</strong></p>

<pre><code>mkdir mi directorio
</code></pre>

<p>Crea un directorio <strong>mi</strong> y otro llamado <strong>directorio</strong></p>

<pre><code>mkdir mi\ directorio
</code></pre>

<p>Creará un directorio con el nombre <strong>"mi directorio"</strong>.</p>

<h2>rm</h2>

<p><strong>rm</strong> es un comando importante y poderoso que se debe usar con cuidado. Puede
usar comodines como * y ? lo que permite borrar archivos que coincidan con un
patrón.</p>

<pre><code># Esta línea borrara el archivo miarchivo.txt
rm miarchivo.txt

# Esta línea borrara todos los archivos que terminen con la extensión **txt**.
rm *.txt
</code></pre>

<p><strong>PRECAUCIÓN</strong> Este comando no permite el borrado de directorios por si mismo
(ver <a href="#rmdir">rmdir</a>), a menos que se use el argumento <strong>-r</strong>, que permite
borrar recursivamente los archivos al interior del directorio y el directorio.
Además si se usa la opción <strong>-f</strong> se fuerza el borrado de todos los archivos y
evita la participación del usuario.  Además el borrado con este comando es casi
permanente, a diferencia del borrado en la interfase gráfica donde los archivos
se mueven al directorio <strong>Trash</strong>.</p>

<h2>mv</h2>

<p>Este comando permite mover archivos de locación y se puede usar para renombrar
archivos (suele usarse mas que el comando rename).</p>

<pre><code># Mueve miarchivo.txt al directorio Documentos
mv miarchivo.txt Documentos/
# Cambia el nombre de miarchivo.txt a otroarchivo.txt
mv miarchivo.txt otroarchivo.txt
</code></pre>

<h2>cp</h2>

<p>Para copiar archivos se usa el comando <strong>cp</strong>, este comando también acepta
comodines, rutas relativas y rutas absolutas.</p>

<pre><code># Copiar un archivo a Documentos
cp  miarchivo.txt ~/Documentos/
# Crea una copia del archivo miarchivo.txt con el nombre otroarchivo.txt
mv miarchivo.txt otroarchivo.txt
# Copia miarchivo.txt al directorio home
cp miarchivo.txt /home/usuario/
</code></pre>

<h2>rmdir</h2>

<p>Permite borrar directorios, sin embargo no puede hacerlo cuando el directorio
no esta vacío.  Su uso:</p>

<pre><code>  rmdir mydirectorio
</code></pre>
";}i:2;i:3;i:3;s:4641:"
#Comandos Básicos de Bash

Bash es un interprete de comandos que viene por defecto en los sistemas **Linux
y Mac**.  Como su nombre lo indica este programa interpreta ordenes que el
sistema operativo llevará a cabo. Permite un control de las tareas comunes del
sistema y es de gran utilidad para la automatización de tareas.  Sin embargo
dado que el **shell bash** requiere el manejo fluido comandos, la curva de
aprendizaje suele ser lenta. Con la intención de facilitar su uso aquí se
listan los comandos mas comunes para las tareas cotidianas y que son la base
para el trabajo con **bash**.

## Consideraciones generales

* Bash diferencia entre minúsculas y mayúsculas. 

* Cuando un comando incluye argumentos suele separarlos con un espacio del comando y van
precedidos por un guión. Esta organización es extensiva a casi todos los
comandos en bash. Aunque en ocasiones los comandos pueden no llevar guión.

* Los comandos aquí mencionados dependen de los permisos de archivo y
 directorios que se ejecuten
<!--Agregar link a sección de permisos -->

## man 

Uno de los comandos mas importantes es **man**. 

Ya que este comando cuando se usa antes de casi cualquier otro comando presenta una
resumen de las funciones del comando, así como los argumentos disponibles para
el comando e incluso ejemplos. 

     man ls

## ls

Enlista los archivos y directorios que se encuentran en el directorio actual,
una forma de uso es la siguiente:

     ls -alh

El comando puede usar argumentos que en general llevan un espacio con respecto
al comando y van precedidos por un guión . En este caso los argumentos son :

* -a argumento que lista todos los archivos, incluso los archivos ocultos
* -l el listado lo hará en formato extenso, esto incluye varias características  
   de los archivos
* -h que los valores de tamaño se representen en formato legible para el humano

Para saber mas prueba el comando [man](#man) antes del **ls**.

## cd  

Este comando  permite el cambio de directorio, acepta rutas relativas y rutas absolutas.

    # Rutas completas
    cd /home/usuario
    cd /media/myusb

    # Rutas a absolutas
    cd ~/    # Cambia al directorio home
    cd ../   # Cambiar al directorio superior

Para navegar con el comando cd, es necesario conocer la estructura del sistema.

<!-- Agregar link a pagina de estructura y manejo de datos del cluster -->


## mkdir
 
Para crear un directorio se usa el comando **mkdir** seguido del nombre que
recibe el directorio, si se usan espacios en el nombre estos deben de llevar un
símbolo de escape (\\), de lo contrario se crearan tantos directorios como
palabras separadas le sigan al comando **mkdir**

    mkdir midirectorio

Crea un directorio  con el nombre **midirectorio**

    mkdir mi directorio

Crea un directorio **mi** y otro llamado **directorio**

    mkdir mi\ directorio

Creará un directorio con el nombre **"mi directorio"**.

## rm

**rm** es un comando importante y poderoso que se debe usar con cuidado. Puede
usar comodines como * y ? lo que permite borrar archivos que coincidan con un
patrón. 

    # Esta línea borrara el archivo miarchivo.txt
    rm miarchivo.txt

    # Esta línea borrara todos los archivos que terminen con la extensión **txt**.
    rm *.txt


**PRECAUCIÓN** Este comando no permite el borrado de directorios por si mismo
(ver [rmdir](#rmdir)), a menos que se use el argumento **-r**, que permite
borrar recursivamente los archivos al interior del directorio y el directorio.
Además si se usa la opción **-f** se fuerza el borrado de todos los archivos y
evita la participación del usuario.  Además el borrado con este comando es casi
permanente, a diferencia del borrado en la interfase gráfica donde los archivos
se mueven al directorio **Trash**.

## mv

Este comando permite mover archivos de locación y se puede usar para renombrar
archivos (suele usarse mas que el comando rename).

    # Mueve miarchivo.txt al directorio Documentos
    mv miarchivo.txt Documentos/
    # Cambia el nombre de miarchivo.txt a otroarchivo.txt
    mv miarchivo.txt otroarchivo.txt
## cp

Para copiar archivos se usa el comando **cp**, este comando también acepta
comodines, rutas relativas y rutas absolutas.

    # Copiar un archivo a Documentos
    cp  miarchivo.txt ~/Documentos/
    # Crea una copia del archivo miarchivo.txt con el nombre otroarchivo.txt
    mv miarchivo.txt otroarchivo.txt
    # Copia miarchivo.txt al directorio home
    cp miarchivo.txt /home/usuario/

## rmdir 

Permite borrar directorios, sin embargo no puede hacerlo cuando el directorio
no esta vacío.  Su uso:

      rmdir mydirectorio

";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:4652;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4652;}}