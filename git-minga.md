comenzando con github
-
Primero, no se asusten, la confusion y la sorpresa es normal en el proceso de aprendizaje de cualquiera....

![scary coding](/Users/patriciasalerno/Downloads/minga-confusa.jpg)


Ahora ya si, empecemos... jaja. 


Github es principalmente un *"version control software"*, es decir, un programa/plataforma/lenguage para compartir y colaborar en computacion, y ahora se ha convertido en un estandar para bioinformaticos tambien, sobre todo para compartir codigo de publicaciones.

Esta semana, quiero que instalen, hagan tutorial, e intenten poner sus documento de Markdown (y otras cositas) en github (!!), lo cual puede tomarles un par de horitas.  Entonces, aca esta el paso a paso para que logren montar su primer repositorio de git. 

**1.Registrarse/Instalar git [aqui](https://github.com/join)**

**2.ABRIR un repositorio en el website de git** de la siguiente manera (pero poniendole el nombre de repositorio que quieran... corto! sin espacios!):

![new repo](/Users/patriciasalerno/Desktop/Screen Shot 2019-05-14 at 1.39.56 PM.png)


**3.Montar archivos en el repositorio utilizando la linea de comando** 

Primero, revisemos que tenemos git instalado en la linea de comando, desde el terminal: 

	which git 

De estar instalado correctamente, el anterior comando les deberia imprimir en el terminal donde esta ubicado/instalado git: 

	/usr/bin/git 

Si esto no les sale, entonces deben instalarlo de nuevo usando este [link](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)


Ahora, antes de trabajar en el repositorio en el computador LOCAL, vamos  a *"clonar"* el repositorio que creamos en linea en nuestro computador local, utilizando el siguiente codigo: 

	git clone webaddresshere

el "web adress" es literalmente la direccion web de su repositorio que acaban de crear, asi que haganle click al repositorio que crearon (para entrar en el) y de ahi copian y pegan la direccion web. 

Ahora, deberian tener el repositorio guardado donde hicieron el comando, el cual pueden chequear con el comando `ls` para ver que este todo alli (solo deberia haber un directorio con el nombre que le dieron al "repo", y el README.md sin nada). Ahora, pueden remplazar ese documento vacio con el que llevan trabajando. Como cambiar solo una linea de un documento implica que le hicieron un cambio al repo, entonces veamos si **git** lo registro: 

	git status

Este comando indica todo lo que esta igual o distinto en tu repositorio local de acuerdo al original que clonaron. Deberia salirles algo asi: 
 
 ![status](/Users/patriciasalerno/Desktop/Screen Shot 2019-05-14 at 2.03.45 PM.png)


Luego, queremos agregar el archivo. Para eso, hacemos: 

	git add README.md
	git status

Se agrego? Tercero, nos "comprometemos al cambio" del documento que agregamos en el paso anterior (el lenguage git es un poco extraño, pero asi son las cosas): 

	git commit -m 'agreguen cualquier cosa aqui'
	git status

El paso anterior es algo medio raro, pero tiene sentido dado que git fue creado para programadores que estan todos trabajando a la vez en un mismo documento y sin tener mucha idea de que hace el otro... este es un paso de control... asi como: 

	ey, tu, seguro que quieres hacer esto?? seguro?!?! y que hiciste?? 

Por eso tambien lleva consigo un mensaje, para que los colaboradores lo vean. Si no agregas mensaje... no sirve el comando! Ahora, finalmente estamos listos para mandar los cambios al repositorio. Este paso es mucho mas complicado cuando mas de una persona trabaja en un repo, pero por lo pronto es bien simple (aunque no menos raro): 

	git push origin master

La primera vez que hacen este comando, la compu por lo general les pide el password, porque git quiere saber que tu tienes permisos para tomar decisiones acerca de ese repositorio. Si no eres el dueño, entonces le pregunta al dueño (por email) si tu quiere o no aceptar los cambios. Ningun cambio es aprobado si no es por el "branch master"... de nuevo con los terminos raros de git. 

>Cuando parezca que el "push" funciono desde el terminal, vayan a la web y refresquen la pagina, a ver si se incorporaron y registraron los cambios!! 



La idea seria tambien montar una especie de "roadmap" o camino de todos los pasos desde "raw" hasta analisis finales, y por ende tambien seria bueno subir los archivos de barcodes y otros documentos y ponerles links activos en el mismo repositorio de git (como esta en la pagina de la minga genomica). Se atreven a montar mas documentos y ponerles links activos en git?? como lo harian? 


>happy gitting! 
