a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:1756:"<h2>Grupo <strong>bioinfo</strong></h2>

<h3>Datos</h3>

<p>Los usuarios de este grupo pueden iniciar sesión al igual que los del grupo
fmriuser. Sin embargo con el afan de facilitar la labor de respaldo de los
diferentes grupos, es recomendable usar una carpeta por usuario en la carpeta
local de datos en específico, las que se encuentran en los equipos de bioinformatica.</p>

<pre><code>/datos/equipo_bioinfo/usuario
</code></pre>

<p>Actualmente se cuenta con los equipos Opti790 y mendel.</p>

<h3>Permisos</h3>

<p>A su vez es importante que el grupo y los <a href="?id=permisos">permisos</a> de grupo se asignen tanto a carpetas como a archivos, ya que si los permisos no están debidamente asignados, esto puede derivar en un fallo en el procesamiento de la tarea por parte del cluster.</p>

<h3>Programas</h3>

<p>Los programas se encuentran alojados en la carpeta:</p>

<pre><code>/datos/mendel/bioinfo/
</code></pre>

<p>Esto para permitir el acceso de todos los equipos del cluster a los programas.
Ademas algunas de las variables necesarias se asignan en un profile que se
carga al inicio de sesión de cada usuario del grupo.</p>

<p>Los programas instalados son:</p>

<pre><code>Bowtie
Bowtie2
Tophat
Cufflinks
Bedtools
HTseq
Samtools
Blat
</code></pre>

<p>Aun faltan por instalar y configurar:</p>

<pre><code>cummeRbund
</code></pre>

<h3>PATH y Variables</h3>

<p>Para <code>bowtie2</code> se generó la variable BT2_HOME que señala a <code>/datos/mendel/bioinfo/bowtie2/</code>. Ademas las direcciones para las diferentes aplicaciones se encuentran en el path de los usuarios del grupo <strong>bioinfo</strong>. Por lo que en teoría cualquier aplicación de los paquetes se ejecutaría automaticamente para todos los usuarios.</p>
";}i:2;i:3;i:3;s:1568:"
## Grupo __bioinfo__ ##

### Datos
Los usuarios de este grupo pueden iniciar sesión al igual que los del grupo
fmriuser. Sin embargo con el afan de facilitar la labor de respaldo de los
diferentes grupos, es recomendable usar una carpeta por usuario en la carpeta
local de datos en específico, las que se encuentran en los equipos de bioinformatica.

    /datos/equipo_bioinfo/usuario

Actualmente se cuenta con los equipos Opti790 y mendel.

### Permisos

A su vez es importante que el grupo y los [permisos](?id=permisos) de grupo se asignen tanto a carpetas como a archivos, ya que si los permisos no están debidamente asignados, esto puede derivar en un fallo en el procesamiento de la tarea por parte del cluster.

### Programas

Los programas se encuentran alojados en la carpeta:

    /datos/mendel/bioinfo/

Esto para permitir el acceso de todos los equipos del cluster a los programas.
Ademas algunas de las variables necesarias se asignan en un profile que se
carga al inicio de sesión de cada usuario del grupo.

Los programas instalados son:

    Bowtie
    Bowtie2
    Tophat
    Cufflinks
    Bedtools
    HTseq
    Samtools
    Blat

Aun faltan por instalar y configurar:

    cummeRbund

### PATH y Variables

Para `bowtie2` se generó la variable BT2_HOME que señala a `/datos/mendel/bioinfo/bowtie2/`. Ademas las direcciones para las diferentes aplicaciones se encuentran en el path de los usuarios del grupo __bioinfo__. Por lo que en teoría cualquier aplicación de los paquetes se ejecutaría automaticamente para todos los usuarios.






";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:1579;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1579;}}