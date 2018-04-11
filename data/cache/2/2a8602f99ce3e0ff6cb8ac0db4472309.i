a:61:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:4858:"<h3>Cambio de versión de <abbr title="FMRIB Software Library">FSL</abbr></h3>

<p>Para cambiar la versión de <abbr title="FMRIB Software Library">FSL</abbr> se pueden usar alias dentro de una terminal en nuestra sesión.</p>

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

<h3>Correr trabajo localmente</h3>

<p>En el caso que se necesite correr un trabajo fuera del cluster, es necesario quitar la variable <strong>FSLPARALLEL</strong> esto funciona en la terminal donde se deshabilita y es ahí donde el comando <strong>fsl</strong> se debe utilizar.</p>

<pre><code> unset FSLPARALLEL
</code></pre>

<h3>Quitar volúmenes de un archivo niffti</h3>

<p>Cuando hay exceso de movimiento durante una corrida de funcional (puede verse en el apartado Pre-stats del reporte) es posible eliminar los volúmenes donde se registró mayor movimiento.</p>

<h4>Opción 1. Utilizar fslsplit</h4>

<h5>Separamos los volúmenes.</h5>

<pre><code>fslsplit Input Output_Base -t 
</code></pre>

<p>Ejemplo:</p>

<pre><code>fslsplit '/home/inb/lauveri/Desktop/Fun0.nii.gz' Im_1 -t
</code></pre>

<p>Detalles: I) El nombre del output debe tener el guión bajo. II) -t se refiere a que va a separar por tiempo, También es posible separar por los tres ejes, aunque no sé en qué circunstancias sería necesario. III) Considera que las imágenes que vas a tener son tantas como volúmenes tiene el input.</p>

<h5>Borrar los volúmenes deseados.</h5>

<p>No hay limitaciones del orden o número de volúmenes que se pueden borrar. Tampoco es necesario renombrar los archivos conservados.</p>

<h5>Utilizar el comando fslmerge</h5>

<pre><code>fslmerge -t output inputs 
</code></pre>

<p>En los que he hecho, disminuye mucho el desplazamiento absoluto, pero no el relativo.
*No olvides modificar los vectores de tu matriz de diseño FEAT.</p>

<p>Es importante mencionar que fslmerge sirve también para concatenar imágenes en las otras dimensiones (x, y, z). Basta cambiar -t por x, y ó z.</p>

<h4>Opción 2: fslroi</h4>

<p>fslroi es capaz de hacer un ''crop'' a nuestros datos, ya sea en espacio 3D o en el tiempo. En nuestro caso, queremos eliminar algunos volúmenes dentro de un set 4D. Supongamos que tenemos 100 volúmenes, y queremos quitar del 50 al 60, que nuestro sujeto se movió. Recordemos que fslroi cuenta a partir de 0, así que los primeros volúmenes son del 0 al 49 y los últimos son del 59 al 99. Tendremos que hacerlo en tres pasos:</p>

<pre><code>fslroi archivoOriginal.nii primeraParte.nii 0 49
fslroi archivoOriginal.nii segundaParte.nii 59 41
fslmerge -t archivoFinal.nii primeraParte.nii segundaParte.nii
</code></pre>

<p>En el caso de la primera línea de código, el 0 representa el índice del volúmen inicial, pero el 49 no representa el índice del volumen final, sino la cantidad de volúmenes que quiero tener. Es decir, aquí le estamos diciendo a <abbr title="FMRIB Software Library">FSL</abbr> que comience a contar con el volúmen índice 0 (o el primero de la serie de volúmenes) y tome 49 en total. En la segunda línea de código le estamos diciendo a <abbr title="FMRIB Software Library">FSL</abbr> que comience desde el índice 59 (o el volúmen número 60) y tome 41 volúmenes.</p>

<h4>Opción 3: mrconvert</h4>

<p>Si de plano lo queremos hacer en un solo paso, la opción es usar ''mrconvert'', que es parte de ''mrtrix''. mrconvert es capaz de extraer volúmenes indicandolos como secuencias numéricas. Hay mucha información en <a href="http://www.brain.org.au/software/mrtrix/general/cmdline.html">esta liga</a></p>

<pre><code>mrconvert -coord 3 0:49,59:99 archivoOriginal.nii archivoFinal.nii
</code></pre>
";}i:2;i:3;i:3;s:3983:"
*[FSL]:  FMRIB Software Library

### Cambio de versión de FSL

Para cambiar la versión de FSL se pueden usar alias dentro de una terminal en nuestra sesión. 

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

### Correr trabajo localmente

En el caso que se necesite correr un trabajo fuera del cluster, es necesario quitar la variable __FSLPARALLEL__ esto funciona en la terminal donde se deshabilita y es ahí donde el comando __fsl__ se debe utilizar.

     unset FSLPARALLEL



### Quitar volúmenes de un archivo niffti


Cuando hay exceso de movimiento durante una corrida de funcional (puede verse en el apartado Pre-stats del reporte) es posible eliminar los volúmenes donde se registró mayor movimiento. 

#### Opción 1. Utilizar fslsplit

##### Separamos los volúmenes.

    fslsplit Input Output_Base -t 

Ejemplo: 

    fslsplit '/home/inb/lauveri/Desktop/Fun0.nii.gz' Im_1 -t


Detalles: I) El nombre del output debe tener el guión bajo. II) -t se refiere a que va a separar por tiempo, También es posible separar por los tres ejes, aunque no sé en qué circunstancias sería necesario. III) Considera que las imágenes que vas a tener son tantas como volúmenes tiene el input. 

##### Borrar los volúmenes deseados. 
No hay limitaciones del orden o número de volúmenes que se pueden borrar. Tampoco es necesario renombrar los archivos conservados. 

##### Utilizar el comando fslmerge

    fslmerge -t output inputs 
 
En los que he hecho, disminuye mucho el desplazamiento absoluto, pero no el relativo.
*No olvides modificar los vectores de tu matriz de diseño FEAT.

Es importante mencionar que fslmerge sirve también para concatenar imágenes en las otras dimensiones (x, y, z). Basta cambiar -t por x, y ó z.


#### Opción 2: fslroi
fslroi es capaz de hacer un ''crop'' a nuestros datos, ya sea en espacio 3D o en el tiempo. En nuestro caso, queremos eliminar algunos volúmenes dentro de un set 4D. Supongamos que tenemos 100 volúmenes, y queremos quitar del 50 al 60, que nuestro sujeto se movió. Recordemos que fslroi cuenta a partir de 0, así que los primeros volúmenes son del 0 al 49 y los últimos son del 59 al 99. Tendremos que hacerlo en tres pasos:
    
    fslroi archivoOriginal.nii primeraParte.nii 0 49
    fslroi archivoOriginal.nii segundaParte.nii 59 41
    fslmerge -t archivoFinal.nii primeraParte.nii segundaParte.nii
  
En el caso de la primera línea de código, el 0 representa el índice del volúmen inicial, pero el 49 no representa el índice del volumen final, sino la cantidad de volúmenes que quiero tener. Es decir, aquí le estamos diciendo a FSL que comience a contar con el volúmen índice 0 (o el primero de la serie de volúmenes) y tome 49 en total. En la segunda línea de código le estamos diciendo a FSL que comience desde el índice 59 (o el volúmen número 60) y tome 41 volúmenes.

#### Opción 3: mrconvert
Si de plano lo queremos hacer en un solo paso, la opción es usar ''mrconvert'', que es parte de ''mrtrix''. mrconvert es capaz de extraer volúmenes indicandolos como secuencias numéricas. Hay mucha información en [esta liga](http://www.brain.org.au/software/mrtrix/general/cmdline.html)

    mrconvert -coord 3 0:49,59:99 archivoOriginal.nii archivoFinal.nii
";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:3994;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:79:"Transformar una máscara (espacio estándar-atlas) al espacio del sujeto (fMRI)";i:1;i:3;i:2;i:4008;}i:2;i:4008;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4008;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4104;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:40:"1. LLevar la máscara a un espacio nuevo";i:1;i:4;i:2;i:4104;}i:2;i:4104;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:4104;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4104;}i:10;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4157;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:141:"arafat@tanner:~/Desktop/$ flirt -in  mascara.nii -ref funcional_sujeto.nii -applyxfm -init standard2example_func.mat -out Mascara_highres.nii";}i:2;i:4159;}i:12;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:4300;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4302;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4302;}i:15;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4304;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"-in";}i:2;i:4306;}i:17;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4309;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"        la máscara a utilizar
";}i:2;i:4311;}i:19;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4342;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"-ref";}i:2;i:4344;}i:21;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4348;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:"       la referencia o espacio que se toma en cuenta para la transformación 
";}i:2;i:4350;}i:23;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4428;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"-applyxfm";}i:2;i:4430;}i:25;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4439;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"  (este no sé qué indica pero va solo)
";}i:2;i:4441;}i:27;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4482;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"-init";}i:2;i:4484;}i:29;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4489;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:321:"     aquí va la matriz de transformación, este archivo termina en .mat; este archivo cambia dependiendo de la referencia (-ref) que se tome, si es un sujeto o un espacio estándar, etc. En este caso es una matriz que se puede obtener de los mismos resultados de un obtenidos en el registro de un sujeto (primer nivel).
";}i:2;i:4491;}i:31;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4812;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"-out";}i:2;i:4814;}i:33;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4818;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"        el nombre de la máscara resultante";}i:2;i:4820;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4863;}i:36;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4865;}i:37;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:55:"2. Cambiar el umbral de la nueva máscara y binarizarla";i:1;i:4;i:2;i:4865;}i:2;i:4865;}i:38;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:4865;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4865;}i:40;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:4935;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"arafat@tanner:~/Desktop/$ fslmaths Mascara_highres.nii -thr 0.9 -bin Mascara_highres.nii";}i:2;i:4937;}i:42;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:5025;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5027;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5027;}i:45;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:5030;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"-thr";}i:2;i:5032;}i:47;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:5036;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:110:"   es el umbral seleccionado,(las opciones van desde 0.9 que es muy conservador, hasta 0.5 que es más laxo) 
";}i:2;i:5038;}i:49;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:5148;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"-bin";}i:2;i:5150;}i:51;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:5154;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:" opción binarizar. Nota: entre cada opción se utiliza el nombre de la imagen que se va a modificar";}i:2;i:5156;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5256;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5256;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"** más detalles de las opciones en ";}i:2;i:5258;}i:56;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:47:"http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FLIRT/FAQ";i:1;N;}i:2;i:5294;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:")";}i:2;i:5341;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5342;}i:59;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5346;}i:60;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:5346;}}