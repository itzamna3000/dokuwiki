a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:1;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:7951:"<h2>Instalación y configuración de GIT</h2>

<p>Se necesita instalar git y git-core para que funcione como servidor, si solo se
necesita usar las funciones de git solo instalamos git:</p>

<pre><code> sudo apt-get  install git-core git  
</code></pre>

<h3>Repositorio desde el servidor</h3>

<p>En el servidor necesitamos crear un  repositorio sin directorio de trabajo
(opción --bare), y con permiso de lectura escritura y ejecución para el grupo
(opción --shared). Primero creamos la carpeta y nos cambiamos a ella:</p>

<pre><code>mkdir -p /datos/penfield/git/proyecto.git
cd /datos/penfield/git/proyecto.git
</code></pre>

<p>Dentro de la carpeta iniciamos el repositorio git:</p>

<pre><code>git init --bare --shared 
</code></pre>

<p>Hay que estar seguros de que el grupo de trabajo contiene a los usuarios que
podrán hacer modificaciones y que el repositorio (proyecto.git) esta a nombre
del grupo de trabajo.</p>

<h3>Subir repositorio a partir de una carpeta ya existente I</h3>

<p>Ya con el repositorio en el servidor, se puede usar una carpeta ya existente en
el equipo cliente que primero se da de alta (se crea el sistema de directorios
.git) mediante git init:</p>

<pre><code>git init
</code></pre>

<p>Se agregan todos los archivos de la carpeta actual (el . es importante):</p>

<pre><code>git add .
</code></pre>

<p>Se hace un commit de todo lo recién agregado, “commit inicial”:</p>

<pre><code>git commit -m 'Commit inicial'
</code></pre>

<p>Y se puede  copiar el sistema de directorios .git a una carpeta del tipo
proyecto.git que será el repositorio:</p>

<pre><code>cp -Rf proyecto/.git proyecto.git 
</code></pre>

<p>La carpeta proyecto.git se pone en el servidor para su acceso. Se puede poner
mediante  cualquier método cp en NFS, ftp o por ejemplo scp:</p>

<pre><code>scp -r proyecto.git user@penfield:/datos/penfield/git/proyecto.git
</code></pre>

<p>A partir de este momento cualquier usuario con acceso de lectura y escritura a
esa carpeta puede clonar el repositorio, por ejemplo con SSH sería:</p>

<pre><code>git clone user@penfield:/datos/penfield/git/proyecto.git
</code></pre>

<h3>Subir repositorio a partir de una carpeta ya existente II</h3>

<p>Otra forma de subir  archivos a proyecto.git en el servidor, es usando esa
carpeta ya existente,inicializarla con el comando init, agregar la y hacer el
commit:</p>

<pre><code>git init
git add .
git commit -m 'Commit inicial'
</code></pre>

<p>Se agrega el repositorio a la configuración de esta carpeta:</p>

<pre><code>git remote add origin soporte@penfield:/datos/penfield/git/mantenimiento.git
</code></pre>

<p>Y se sube los cambios del commit al repositorio:</p>

<pre><code>git push origin master
</code></pre>

<p>Es importante hacer un commit inicial, de otra forma el push no puede subir la
información y manda un error.</p>

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
darle prioridad.  En el caso de querer borrar una branch se usa el comando:</p>

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
[remotename] [localbranch]:[remotebranch] y aquí nos deshacemos de la parte del
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

<p>Donde: 
* -a agrega todos los archivos con cambios al commit, pero no agrega
archivos nuevos<br />
* -m permite escribir el mensaje para el commit entre comillas.</p>

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
";}i:2;i:3;i:3;s:7134:"
## Instalación y configuración de GIT ##

Se necesita instalar git y git-core para que funcione como servidor, si solo se
necesita usar las funciones de git solo instalamos git:


     sudo apt-get  install git-core git  

### Repositorio desde el servidor ###



En el servidor necesitamos crear un  repositorio sin directorio de trabajo
(opción --bare), y con permiso de lectura escritura y ejecución para el grupo
(opción --shared). Primero creamos la carpeta y nos cambiamos a ella:


    mkdir -p /datos/penfield/git/proyecto.git
    cd /datos/penfield/git/proyecto.git

Dentro de la carpeta iniciamos el repositorio git:


    git init --bare --shared 


Hay que estar seguros de que el grupo de trabajo contiene a los usuarios que
podrán hacer modificaciones y que el repositorio (proyecto.git) esta a nombre
del grupo de trabajo.


### Subir repositorio a partir de una carpeta ya existente I ###

Ya con el repositorio en el servidor, se puede usar una carpeta ya existente en
el equipo cliente que primero se da de alta (se crea el sistema de directorios
.git) mediante git init:


    git init


Se agregan todos los archivos de la carpeta actual (el . es importante):


    git add .


Se hace un commit de todo lo recién agregado, “commit inicial”:

    git commit -m 'Commit inicial'


Y se puede  copiar el sistema de directorios .git a una carpeta del tipo
proyecto.git que será el repositorio:

    cp -Rf proyecto/.git proyecto.git 


La carpeta proyecto.git se pone en el servidor para su acceso. Se puede poner
mediante  cualquier método cp en NFS, ftp o por ejemplo scp:


    scp -r proyecto.git user@penfield:/datos/penfield/git/proyecto.git


A partir de este momento cualquier usuario con acceso de lectura y escritura a
esa carpeta puede clonar el repositorio, por ejemplo con SSH sería:


    git clone user@penfield:/datos/penfield/git/proyecto.git




### Subir repositorio a partir de una carpeta ya existente II ###

Otra forma de subir  archivos a proyecto.git en el servidor, es usando esa
carpeta ya existente,inicializarla con el comando init, agregar la y hacer el
commit:


    git init
    git add .
    git commit -m 'Commit inicial'

Se agrega el repositorio a la configuración de esta carpeta:


    git remote add origin soporte@penfield:/datos/penfield/git/mantenimiento.git


Y se sube los cambios del commit al repositorio:


    git push origin master


Es importante hacer un commit inicial, de otra forma el push no puede subir la
información y manda un error.


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
darle prioridad.  En el caso de querer borrar una branch se usa el comando:


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
[remotename] [localbranch]:[remotebranch] y aquí nos deshacemos de la parte del
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
* -a agrega todos los archivos con cambios al commit, pero no agrega
archivos nuevos  
* -m permite escribir el mensaje para el commit entre comillas.  


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
";}i:2;i:11;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:7145;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7145;}}