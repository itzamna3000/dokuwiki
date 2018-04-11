a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:8740:"<h2>GIT</h2>

<p>Permite a varios usuarios interactuar con el mismo codigo actualizando las
modificaciónes que introduzcan y combinandolas, evitando posibles conflictos.
Además facilita la recuperación de diferentes commit's (versiones). Y la
generación de ramas alternas a la principal permitiendo un cambio rápido entre
la rama original y las ramas alternas.</p>

<h2>Instalación y configuración de GIT</h2>

<p>Se necesita instalar <strong>git</strong> y <strong>git-core</strong> para que funcione como <strong>servidor</strong>, si solo se requiere clonar un repositorio solo instalamos git:</p>

<pre><code>sudo apt-get  install git-core git  
</code></pre>

<h3>Clonar un repositorio</h3>

<p>Para obtener una copia de un repositorio se usa la instrucción</p>

<pre><code>git clone usuario@penfield:/datos/penfield/git/proyecto.git
</code></pre>

<p>Con esta opción obtenemos una copia del repositorio maestro de el proyecto. Si el repositorio es nuevo no descargara nada.</p>

<h3>Crear un Repositorio</h3>

<p>En el servidor se crea una carpeta que funcionara como repositorio, este debe ser configurado sin directorio de trabajo <em>(opción --bare)</em>, y con permiso de lectura escritura y ejecución para el grupo tanto en el sistema de archivos como en la configuración de <strong>git</strong> <em>(opción --shared)</em>. Primero creamos la carpeta, determinamos los usuarios, grupos y permisos pertinentes para la carpeta y nos cambiamos a ella:</p>

<pre><code>mkdir -p /datos/penfield/git/proyecto.git
chown usuario:fmriuser /datos/penfield/git/proyecto.git
chmod g+wr /datos/penfield/git/proyecto.git
cd /datos/penfield/git/proyecto.git
</code></pre>

<p>Dentro de la carpeta iniciamos el repositorio <strong>git</strong>:</p>

<pre><code>git init --bare --shared 
</code></pre>

<p>Hay que estar seguros de que el grupo de trabajo contiene a los usuarios que
podrán hacer modificaciones y que el repositorio (proyecto.git) esta a nombre
del grupo de trabajo.</p>

<p>A partir de este momento este repositorio se puede utilizar, aunque de momento no tiene nada dentro. Puede clonarse en el servidor local para comenzar a trabajar.</p>

<p>Al clonarse, la intrucción creara una carpeta llamada <strong>proyecto</strong> en la carpeta donde se ejecuta este comando. En esta carpeta podemos agregar algún archivo para realizar el primer commit. Por ejemplo el archivo .gitignore para que git ignore ciertos archivos.</p>

<pre><code>echo "*.swp" &gt; .gitignore
</code></pre>

<blockquote>
  <p><strong>Nota:</strong><br />
  Esto es solo necesario si no se tienen archivos con los cuales hacer un commit o es la primera vez que se usa. Este comando por segunda vez podría eliminar modificaciónes posteriores sobre <strong>.gitignore</strong></p>
</blockquote>

<p>Ya con los archivos se realiza el commit</p>

<pre><code>git commit -m 'Commit inicial
</code></pre>

<p>Se agrega repositorio remoto</p>

<pre><code>git remote add origin usuario@penfield:/datos/penfield/git/proyecto.git
</code></pre>

<p>Esta es la instrucción para agregar un repositorio que se accede por <a href="?id=ssh">ssh</a>, por lo que seguramente nos pedira un password. A menos que hayamos configurado una ssh-key para el servidor. La instrucción para agregar otro tipo de repositorio se encuentra en la <a href="http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository">documentación</a> de git.</p>

<p>Por último se hace un push para subir los archivos al repositorio recien creado.</p>

<pre><code>git push github master
</code></pre>

<h3>Branchs</h3>

<p>Para crear una Branch</p>

<pre><code>git checkout  mybranch
</code></pre>

<p>Para crearla y pasarse a ella</p>

<pre><code>git checkout -b mybranch
</code></pre>

<p>Regresar a la branch principal</p>

<pre><code>git checkout master
</code></pre>

<p>Para unir el trabajo de la rama nueva con la rama vieja, primero nos pasamos a
la rama maestra</p>

<pre><code>git checkout master
</code></pre>

<p>Y luego hacemos el merge de nuestra branch</p>

<pre><code>git merge mybranch
</code></pre>

<p>Cuando se hace un merge se suele dar prioridad al merge que primero se hace.
Además si el master de donde parte nuestra branch ha sido cambiado de alguna
forma, por ejemplo un merge de otra rama, git fusiona los diferentes snapshots.
Esto solo  cambia cuando al hacer el merge, la rama y el master cambian el
mismo archivo-línea. En este punto merge pide asistencia para definir a cual
darle prioridad.</p>

<p>En el caso de querer borrar una branch se usa el comando:</p>

<pre><code>git branch -d mybranch
</code></pre>

<p>Para ver el último commit de cada branch:</p>

<pre><code>git branch -v
</code></pre>

<p>Para subir una rama en la que querramos colaborar, es necesario que exista el
repositorio y se usa el siguiente comando:</p>

<pre><code>git push origin myotherbranch
</code></pre>

<p>Es posible, si queremos que el nombre en el servidor remoto sea distinto,
determinar otro nombre para la branch, usando el comando:</p>

<pre><code>git push origin myotherbranch:otronombredelabranch
</code></pre>

<p>En la siguiente ocasión en la que un colaborador obtenga el repositorio
aparecera la rama que se subio al mismo. Pero esta rama sera solo un apuntador
a la posición origin/mybranch que no esta disponible para edición. Para poder
acceder a esta rama y poder hacer modificaciones se usa el comando:</p>

<pre><code>git checkout -b myotherbranch origin/myotherbranch
</code></pre>

<p>Si se quiere hacer automáticamente el fetch y el push es necesario activar el
tracking para dicha branch. Mediante:</p>

<pre><code>git checkout --track origin/serverfix
</code></pre>

<p>En versiones anteriores se usaba el siguiente comando:</p>

<pre><code>git checkout -b myotherbranch origin/myotherbranch
</code></pre>

<p>Si por ejemplo la rama en la que estamos trabajando deja de ser funcional y
necesitamos  borrar la rama remota se borra con el siguiente comando:</p>

<pre><code>git push origin :mybranch
</code></pre>

<p>Este comando funciona considerando el constructo de la función git push
<em>remotename</em> <strong>localbranch</strong>: <em>remotebranch</em> y aquí nos deshacemos de la parte del
localbranch y le decimos que con eso forme el remotebranch. Al estar el local
vacío, sustituye la branch remota por nada.</p>

<h3>Uso cotidiano</h3>

<p>En el uso cotidiano los pasos a seguir para registrar los cambios son:</p>

<pre><code>git add .
</code></pre>

<p>ó</p>

<pre><code>git add *
</code></pre>

<p>ó</p>

<pre><code>git add nombredearchivo
</code></pre>

<p>Esto agrega los archivos para que se anexen al siguiente commit. Después de
esto se hace el commit para consolidar los archivos y los cambios en la
historia de la carpeta:</p>

<pre><code>git commit
</code></pre>

<p>Esto abre un editor de texto (que se puede cambiar) que pide un mensaje que
pueda describir el commit. Si no se proporciona el mensaje no se realiza el
commit. Estos pasos se pueden resumir en el siguiente comando:</p>

<pre><code>git commit -a -m ‘My commit’
</code></pre>

<p>Donde:</p>

<dl>
<dt>-a</dt>
<dd>agrega todos los archivos con cambios al commit, pero no agrega
archivos nuevos</dd>

<dt>-m</dt>
<dd>permite escribir el mensaje para el commit entre comillas.</dd>
</dl>

<p>Otro punto importante es observar el estado de los archivos en la carpeta, esto
se realiza mediante:</p>

<pre><code>git status
</code></pre>

<p>Incluso si se tienen los colores activados, este comando muestra en rojo los
archivos que no han sido incluidos en el commit y en verde los que sí se han
incluido.</p>

<p>Para borrar archivos, se pueden borrar normalmente con rm nombre de archivo,
sin embargo cuando se haga el commit tendremos que borrar también con:</p>

<pre><code>git rm nombredearchivo
</code></pre>

<p>Siendo buena práctica desde el principio usar este comando en la carpeta con
git, ya que borra el archivo e informa de esto a git. O usar durante el commit
la opción -a, sin embargo en ocasiones si necesitamos más control es mejor
hacerlo paso a paso.</p>

<hr />

<h2>Alias útiles para GIT</h2>

<pre><code>[color]
    ui = true
[alias]
    lol = log --oneline --graph --decorate
    ls = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate
    ll = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat
    lds = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short
    ld = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative
    le = log --oneline --decorate
    filelog = log -u
    fl = log -u
[core]
    editor = vi
[merge]
    tool = vimdiff
</code></pre>
";}i:2;i:3;i:3;s:7752:"

## GIT

Permite a varios usuarios interactuar con el mismo codigo actualizando las
modificaciónes que introduzcan y combinandolas, evitando posibles conflictos.
Además facilita la recuperación de diferentes commit's (versiones). Y la
generación de ramas alternas a la principal permitiendo un cambio rápido entre
la rama original y las ramas alternas.

## Instalación y configuración de GIT ##

Se necesita instalar __git__ y __git-core__ para que funcione como __servidor__, si solo se requiere clonar un repositorio solo instalamos git:

    sudo apt-get  install git-core git  


### Clonar un repositorio

Para obtener una copia de un repositorio se usa la instrucción

    git clone usuario@penfield:/datos/penfield/git/proyecto.git

Con esta opción obtenemos una copia del repositorio maestro de el proyecto. Si el repositorio es nuevo no descargara nada.


### Crear un Repositorio ###

En el servidor se crea una carpeta que funcionara como repositorio, este debe ser configurado sin directorio de trabajo _(opción --bare)_, y con permiso de lectura escritura y ejecución para el grupo tanto en el sistema de archivos como en la configuración de __git__ _(opción --shared)_. Primero creamos la carpeta, determinamos los usuarios, grupos y permisos pertinentes para la carpeta y nos cambiamos a ella:


    mkdir -p /datos/penfield/git/proyecto.git
    chown usuario:fmriuser /datos/penfield/git/proyecto.git
    chmod g+wr /datos/penfield/git/proyecto.git
    cd /datos/penfield/git/proyecto.git

Dentro de la carpeta iniciamos el repositorio __git__:


    git init --bare --shared 


Hay que estar seguros de que el grupo de trabajo contiene a los usuarios que
podrán hacer modificaciones y que el repositorio (proyecto.git) esta a nombre
del grupo de trabajo.


A partir de este momento este repositorio se puede utilizar, aunque de momento no tiene nada dentro. Puede clonarse en el servidor local para comenzar a trabajar.

Al clonarse, la intrucción creara una carpeta llamada __proyecto__ en la carpeta donde se ejecuta este comando. En esta carpeta podemos agregar algún archivo para realizar el primer commit. Por ejemplo el archivo .gitignore para que git ignore ciertos archivos.

    echo "*.swp" > .gitignore
  
> __Nota:__    
> Esto es solo necesario si no se tienen archivos con los cuales hacer un commit o es la primera vez que se usa. Este comando por segunda vez podría eliminar modificaciónes posteriores sobre __.gitignore__

Ya con los archivos se realiza el commit

    git commit -m 'Commit inicial

Se agrega repositorio remoto

    git remote add origin usuario@penfield:/datos/penfield/git/proyecto.git

Esta es la instrucción para agregar un repositorio que se accede por [ssh](?id=ssh), por lo que seguramente nos pedira un password. A menos que hayamos configurado una ssh-key para el servidor. La instrucción para agregar otro tipo de repositorio se encuentra en la [documentación](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository) de git.    

Por último se hace un push para subir los archivos al repositorio recien creado.

    git push github master
  


### Branchs ###


Para crear una Branch


    git checkout  mybranch


Para crearla y pasarse a ella 


    git checkout -b mybranch


Regresar a la branch principal 

    git checkout master


Para unir el trabajo de la rama nueva con la rama vieja, primero nos pasamos a
la rama maestra


    git checkout master


Y luego hacemos el merge de nuestra branch


    git merge mybranch


Cuando se hace un merge se suele dar prioridad al merge que primero se hace.
Además si el master de donde parte nuestra branch ha sido cambiado de alguna
forma, por ejemplo un merge de otra rama, git fusiona los diferentes snapshots.
Esto solo  cambia cuando al hacer el merge, la rama y el master cambian el
mismo archivo-línea. En este punto merge pide asistencia para definir a cual
darle prioridad.   

En el caso de querer borrar una branch se usa el comando:


    git branch -d mybranch


Para ver el último commit de cada branch:

    git branch -v

Para subir una rama en la que querramos colaborar, es necesario que exista el
repositorio y se usa el siguiente comando:

    git push origin myotherbranch

Es posible, si queremos que el nombre en el servidor remoto sea distinto,
determinar otro nombre para la branch, usando el comando:


    git push origin myotherbranch:otronombredelabranch


En la siguiente ocasión en la que un colaborador obtenga el repositorio
aparecera la rama que se subio al mismo. Pero esta rama sera solo un apuntador
a la posición origin/mybranch que no esta disponible para edición. Para poder
acceder a esta rama y poder hacer modificaciones se usa el comando:


    git checkout -b myotherbranch origin/myotherbranch


Si se quiere hacer automáticamente el fetch y el push es necesario activar el
tracking para dicha branch. Mediante:


    git checkout --track origin/serverfix


En versiones anteriores se usaba el siguiente comando:


    git checkout -b myotherbranch origin/myotherbranch


Si por ejemplo la rama en la que estamos trabajando deja de ser funcional y
necesitamos  borrar la rama remota se borra con el siguiente comando:


    git push origin :mybranch


Este comando funciona considerando el constructo de la función git push
_remotename_ __localbranch__: *remotebranch* y aquí nos deshacemos de la parte del
localbranch y le decimos que con eso forme el remotebranch. Al estar el local
vacío, sustituye la branch remota por nada.


### Uso cotidiano ###


En el uso cotidiano los pasos a seguir para registrar los cambios son:


    git add .
 
ó


    git add *


ó


    git add nombredearchivo


Esto agrega los archivos para que se anexen al siguiente commit. Después de
esto se hace el commit para consolidar los archivos y los cambios en la
historia de la carpeta:


    git commit


Esto abre un editor de texto (que se puede cambiar) que pide un mensaje que
pueda describir el commit. Si no se proporciona el mensaje no se realiza el
commit. Estos pasos se pueden resumir en el siguiente comando:


    git commit -a -m ‘My commit’




Donde: 

-a
: agrega todos los archivos con cambios al commit, pero no agrega
archivos nuevos  

-m
: permite escribir el mensaje para el commit entre comillas.  


Otro punto importante es observar el estado de los archivos en la carpeta, esto
se realiza mediante:


    git status


Incluso si se tienen los colores activados, este comando muestra en rojo los
archivos que no han sido incluidos en el commit y en verde los que sí se han
incluido. 


Para borrar archivos, se pueden borrar normalmente con rm nombre de archivo,
sin embargo cuando se haga el commit tendremos que borrar también con:


    git rm nombredearchivo


Siendo buena práctica desde el principio usar este comando en la carpeta con
git, ya que borra el archivo e informa de esto a git. O usar durante el commit
la opción -a, sin embargo en ocasiones si necesitamos más control es mejor
hacerlo paso a paso.










____________




## Alias útiles para GIT


    [color]
        ui = true
    [alias]
        lol = log --oneline --graph --decorate
        ls = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate
        ll = log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat
        lds = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short
        ld = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative
        le = log --oneline --decorate
        filelog = log -u
        fl = log -u
    [core]
        editor = vi
    [merge]
        tool = vimdiff

";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:7763;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7763;}}