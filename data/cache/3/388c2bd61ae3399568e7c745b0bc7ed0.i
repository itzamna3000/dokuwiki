a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:3674:"<h2>Uso del clúster</h2>

<p>Como usuarios del clúster es necesario considerar varios factores para una
buena ejecución de los trabajos que enviamos. La localización de los <a href="?id=datoscluster">datos en
el clúster</a> los <a href="?id=permisos">permisos</a> y el estado de las
colas de ejecución del clúster.</p>

<h3>La manera más fácil de enviar un trabajo al cluster</h3>

<p>Aunque la manera formal es utilizar <a href="http://gridscheduler.sourceforge.net/htmlman/htmlman1/qsub.html">qsub</a>, normalmente queremos que el comando que acabamos de escribir en la terminal se ejecute en el cluster, no en esta máquina. Para estos fines, nuestro amigo es ''fsl_sub''. Para usarlo, simplemente lo anteponemos a cualquier comando a ejecutar, con todo y los argumentos propios del comando a ejecutar. De manera general:</p>

<pre><code>fsl_sub &lt;comando&gt; [argumentos]
</code></pre>

<p>De esta forma, si queremos ejecutar el comando ''ls'' en el cluster, simplemente escribimos ''fsl_sub ls'', y si quisieramos argumetos, pondríamos, por ejemplo, ''fsl_sub ls -lart''.</p>

<p>''fsl_sub'' tiene varias opciones que controlan en qué sistema de colas va a correr nuestro trabajo, la prioridad del mismo, e incluso nos permite utilizar un archivo lleno de jobs para mandar como un //arreglo// al cluster. Quizás la opción más util es la de nombrar a nuestro job, que por defecto simplemente será bautizado con un aburrido número. Si hemos enviado a procesar los datos de 50 sujetos al cluster, por ejemplo, nos gustaría saber qué sujetos siguen en ejecución. Para ésto, usamos:</p>

<pre><code>fsl_sub -N &lt;nombreDelJob&gt;
</code></pre>

<p>por ejemplo: ''fsl_sub -N suj331 recon-all -all -subjid 331''. 
El identificador ''suj331'' aparecerá en la lista de jobs cuando usemos
''qstat''. Ojo, pues los nombres de jobs no pueden iniciar con un número.</p>

<p>Un ejemplo veloz para mandar a procesar a 5 sujetos en freesurfer:</p>

<pre><code>for suj in 301 302 303 304 305; do fsl_sub -N s${suj} recon-all -all -subjid $suj;done
</code></pre>

<p>en este ejemplo, cada job tiene la forma ''recon-all -all -subjid $suj'',
donde ''$suj'' toma el valor de 301 a 305. Estudia la sintaxis de fsl_sub
y trata de entender cómo se le hizo.</p>

<p>Para conocer el estado de las colas de ejecución se pueden usar los siguientes
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

<h3>Si los trabajos no corren</h3>

<p>Por favor revisa la <a href="?id=errorescluster">página donde se explican los posibles errores</a></p>

<h4>Salir del clúster<sup id="fnref:1"><a href="#fn:1" rel="footnote">1</a></sup></h4>

<p>Para correr trabajos de fsl en la máquina de manera local sin entrar al clúster
se puede usar el comando:</p>

<p>unset FSLPARALLEL</p>

<div class="footnotes">
<hr />
<ol>

<li id="fn:1">
<p>Salir en este caso se refiere a que el uso de programas se hara de forma local sin mandarlos al clúster. Sin embargo el equipo seguira formando parte del clúster&#160;<a href="#fnref:1" rev="footnote">&#8617;</a></p>
</li>

</ol>
</div>
";}i:2;i:3;i:3;s:3134:"
## Uso del clúster

Como usuarios del clúster es necesario considerar varios factores para una
buena ejecución de los trabajos que enviamos. La localización de los [datos en
el clúster](?id=datoscluster) los [permisos](?id=permisos) y el estado de las
colas de ejecución del clúster. 

### La manera más fácil de enviar un trabajo al cluster
Aunque la manera formal es utilizar [qsub](http://gridscheduler.sourceforge.net/htmlman/htmlman1/qsub.html), normalmente queremos que el comando que acabamos de escribir en la terminal se ejecute en el cluster, no en esta máquina. Para estos fines, nuestro amigo es ''fsl_sub''. Para usarlo, simplemente lo anteponemos a cualquier comando a ejecutar, con todo y los argumentos propios del comando a ejecutar. De manera general:

    fsl_sub <comando> [argumentos]

De esta forma, si queremos ejecutar el comando ''ls'' en el cluster, simplemente escribimos ''fsl_sub ls'', y si quisieramos argumetos, pondríamos, por ejemplo, ''fsl_sub ls -lart''.

''fsl_sub'' tiene varias opciones que controlan en qué sistema de colas va a correr nuestro trabajo, la prioridad del mismo, e incluso nos permite utilizar un archivo lleno de jobs para mandar como un //arreglo// al cluster. Quizás la opción más util es la de nombrar a nuestro job, que por defecto simplemente será bautizado con un aburrido número. Si hemos enviado a procesar los datos de 50 sujetos al cluster, por ejemplo, nos gustaría saber qué sujetos siguen en ejecución. Para ésto, usamos:

    fsl_sub -N <nombreDelJob>
  
por ejemplo: ''fsl_sub -N suj331 recon-all -all -subjid 331''. 
El identificador ''suj331'' aparecerá en la lista de jobs cuando usemos
''qstat''. Ojo, pues los nombres de jobs no pueden iniciar con un número.

Un ejemplo veloz para mandar a procesar a 5 sujetos en freesurfer:

    for suj in 301 302 303 304 305; do fsl_sub -N s${suj} recon-all -all -subjid $suj;done
  
en este ejemplo, cada job tiene la forma ''recon-all -all -subjid $suj'',
donde ''$suj'' toma el valor de 301 a 305. Estudia la sintaxis de fsl_sub
y trata de entender cómo se le hizo.


Para conocer el estado de las colas de ejecución se pueden usar los siguientes
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

### Si los trabajos no corren
Por favor revisa la [página donde se explican los posibles errores](?id=errorescluster)


#### Salir del clúster[^1]

Para correr trabajos de fsl en la máquina de manera local sin entrar al clúster
se puede usar el comando:

unset FSLPARALLEL


[^1]:
    Salir en este caso se refiere a que el uso de programas se hara de forma local sin mandarlos al clúster. Sin embargo el equipo seguira formando parte del clúster

";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:3145;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3145;}}