a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:1554:"<h2>Uso del clúster</h2>

<p>Como usuarios del clúster es necesario considerar varios factores para una
buena ejecución de los trabajos que enviamos. La localización de los <a href="?id=datoscluster">datos en
el clúster</a> los <a href="?id=permisos">permisos</a> y el estado de las
colas de ejecución del clúster. Para esto ultimo se pueden usar los siguientes
comandos:</p>

<pre><code>qstat -f
</code></pre>

<p>Permite ver los trabajos en una lista de hosts con los slot's en uso<br />
<strong>locales/clúster/disponibles</strong>.</p>

<pre><code>qstat -u '*'
</code></pre>

<p>Permite ver todos los trabajos de todos los usuarios en ejecución</p>

<pre><code>qstat
</code></pre>

<p>Por si sólo muestra los trabajos del usuario que lo ejecuta</p>

<pre><code>qdel #
</code></pre>

<p>Permite borrar trabajos de la cola de ejecución, en este caso # se sustituye
por el número del trabajo que se quiere eliminar</p>

<pre><code>qdel -u usuario
</code></pre>

<p>Borra todos los trabajos del usuario.</p>

<h4>Salir del clúster<sup id="fnref:1"><a href="#fn:1" rel="footnote">1</a></sup></h4>

<p>Para correr trabajos de fsl en la máquina de manera local sin entrar al clúster
se puede usar el comando:</p>

<p>set unexport FSL_PARALELL</p>

<div class="footnotes">
<hr />
<ol>

<li id="fn:1">
<p>Salir en este caso se refiere a que el uso de programas se hara de forma local sin mandarlos al clúster. Sin embargo el equipo seguira formando parte del clúster&#160;<a href="#fnref:1" rev="footnote">&#8617;</a></p>
</li>

</ol>
</div>
";}i:2;i:3;i:3;s:1172:"
## Uso del clúster

Como usuarios del clúster es necesario considerar varios factores para una
buena ejecución de los trabajos que enviamos. La localización de los [datos en
el clúster](?id=datoscluster) los [permisos](?id=permisos) y el estado de las
colas de ejecución del clúster. Para esto ultimo se pueden usar los siguientes
comandos:

    qstat -f

Permite ver los trabajos en una lista de hosts con los slot's en uso   
__locales/clúster/disponibles__.

    qstat -u '*'

Permite ver todos los trabajos de todos los usuarios en ejecución

    qstat

Por si sólo muestra los trabajos del usuario que lo ejecuta

    qdel #

Permite borrar trabajos de la cola de ejecución, en este caso # se sustituye
por el número del trabajo que se quiere eliminar

    qdel -u usuario

Borra todos los trabajos del usuario.

#### Salir del clúster[^1]

Para correr trabajos de fsl en la máquina de manera local sin entrar al clúster
se puede usar el comando:

set unexport FSL_PARALELL


[^1]:
    Salir en este caso se refiere a que el uso de programas se hara de forma local sin mandarlos al clúster. Sin embargo el equipo seguira formando parte del clúster

";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:1183;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1183;}}