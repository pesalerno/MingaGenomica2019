MingaGenomica2019
====

Bienvenidos a la **Minga Genomica PUCE 2019!** En esta especie de taller de *'iniciacion a la bioinformatica'* para ecologos y biologos evolutivos basados en Quito, estaremos colaborando en nuestros proyectos genomicos (con datos reales de proxima generacion obtenidos recientemente a traves del protocolo ddRAD) a medida que aprendemos los pasos bioinformaticos para obtener una matriz de SNPs y publicar nuestros datos genomicos! 

Antes que nada, es importante que comiencen a familiarizarse con lo que yo llamo *'hablarle al computador'*, es decir, entender el ambiente del **bash/shell**. Para eso, por favor lean esta leccion de 10 minutos de [comenzando con shell](https://swcarpentry.github.io/shell-novice/01-intro/index.html) ademas de unicamente las primeras dos secciones (**home directory variation** y **slashes**) de la [segunda leccion de shell](https://swcarpentry.github.io/shell-novice/02-filedir/index.html) para que asi ya estemos un poquito familarizados con este ambiente y con el concepto de no tener una interface GUI!

Semana 1
---


Lo primero que estaremos aprendiendo es como empezar a ver nuestros datos genomicos por primera vez. Para esto, en nuetra primera semana de reunion minguera usaremos el programa [FASTQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) para ver la calidad de nuestras *'raw sequences'* y ademas de eso usaremos el bash/shell que se obtiene a traves del **terminal** en mac/unix, y que en la PC se puede obtener a traves de un programa de interface asi como [cmder](https://cmder.net/). Esta parte del taller estara basado en una leccion de unix ([parte 1](https://rdtarvin.github.io/RADseq_Quito_2017/main/2017/08/02/morning-shell-data.html) y [parte 2](https://rdtarvin.github.io/RADseq_Quito_2017/main/2017/08/02/afternoon-2bRAD-pyrad.html) escrita por yo y RD Tarvin para un [taller que dimos en Quito (2017)](https://rdtarvin.github.io/RADseq_Quito_2017/). 

Semana 2
---


Desde el comienzo (aunque empezaremos desde la semana dos debido al tiempo!) estaremos aprendiendo buenas practicas de bioinformatica para asi poder mantener nuestros pipelines organizados, limpios, y contribuibles por otros! Por ende, estaremos usando el programa [MacDown](https://macdown.uranusjr.com/) para Mac/Linux y [Typora](https://typora.io/) para PC como editores de texto para mantener nuestros pipelines organizados, y utilizaremos [GitHub](https://gist.github.com/derhuerst/1b15ff4652a867391f03) para mantener nuestros proyectos 100% open science y ademas para poder colaborar con otros bioinformaticos en nuestros proyectos con facilidad! 

Semana 3
---

**STACKS | demultiplexing**

la principal tarea de la tercera semana de la minga sera separar los individuos dentro de los 'pools' de secuenciacion de acuerdo a sus adaptadores y primers, e instalar stacks en los computadores linux/mac para entender como compilar programas y como editar las *"environment variables"*. El "demultiplexing" de las muestras se hace utilizando un programa que se llama [process_radtags](http://catchenlab.life.illinois.edu/stacks/comp/process_radtags.php) que existe dentro de lo que es el grupo de programas de [stacks](http://catchenlab.life.illinois.edu/stacks/). Para esto, aprenderemos un poco de editar archivos de texto y haremos mas ejercicios en **shell**. Es necesario que tengan un **BUEN** editor de texto, el cual para MAC debe ser [BBEdit](https://www.barebones.com/products/bbedit/download.html) y para PC debe ser [atom](https://atom.io/). Es fundamental editar archivos de textos en este tipo de programa... cero **NotePad** ni **Word**!!!! 

> Durante todo el proceso de demultiplexing estaremos anotando todos nuestros pasos con sus debidas explicaciones en nuestro archivo de **MarkDown** que se vera muy parecido a este que lees, con explicaciones de cada paso y todo el codigo utilizado! 


> Para instalar **stacks**, deben tener lo que se llaman los [GNU autotools](https://www.gnu.org/software/automake/manual/html_node/Autotools-Introduction.html), y los cuales para la **MAC** deberian venir incluidos dentro de la instalacion de [XCODE](https://developer.apple.com/xcode/). 

Antes de la semana 4, tambien intentaremos preparar los dos principales "input files" para utilizar en **denovo_map.pl**, los cuales requieren de unos cuantos pasos bioinformaticos como se puede ver en este ejemplo!  


Tutorial para comenzar con github
-

Para realmente entender como funciona *github* y crear y colaborar en sus propios repositorios (proyectos), hice un tutorial corto que pueden encontrar [aqui](https://github.com/pesalerno/MingaGenomica2019/blob/master/git-minga.md). 


Una vez que ya se sientan comodos con eso, pueden intentar entre ustedes colaborar en sus proyectos (es decir, que todos puedan montar modificaciones al mismo proyecto en github) con otro [tutorial que escribi en ingles para colaborar en github](https://github.com/pesalerno/PUMAgenomics/blob/master/git-collaborating-protocol.md). Suerte!! 


Semana 4, 5, y 6...
---

**STACKS  and ipyrad | *de novo* genotyping**

A partir de la cuarta semana empezaremos a hacer el genotyping utilizando el programa [denovo_map](http://catchenlab.life.illinois.edu/stacks/comp/denovo_map.php) en **stacks**, y tambien para algunos proyectos usaremos [**ipyrad**](https://ipyrad.readthedocs.io/).


Para **stacks** es necesario que se lean con mucho detenimiento [este tutorial](http://catchenlab.life.illinois.edu/stacks/param_tut.php) donde se explican las funciones de los tres parametros principales de stacks, y tambien esta publicacion de [Paris et al. 2017](https://github.com/pesalerno/MingaGenomica2019/blob/master/lecturas/Paris-etal-2017.pdf), en la que se describen muchas de las cosas que estaremos haciendo en el "experimento de genotipificacion" que estaremos haciendo en los proximos pasos de la minga. 


Para ipyrad es necesario que entiendan la Figura 3a de esta publicacion, ademas de 



Duraremos 2-4 semanas en el *denovo genotyping*, y en el proceso tambien estaremos graficando analisis preliminares en R utilizando el programa de genomica poblacional, [adegenet](http://adegenet.r-forge.r-project.org/), para observar potenciales sesgos dentro de nuestros datos. 


Dado que hay los cuatro proyectos que estamos trabajando en la minga son tan distintos, cada liberia/proyecto tendra condiciones muy distintas que resultaran en que corramos distintos analisis, y que escojamos distintos parametros! Esto se discutira en clase. Cuando terminemos este paso, la meta es tener ya lista la genotipificacion de todos los proyectos, incluidos escritos los metodos y resultados, para luego comenzar con el filtrado de las matrices de datos.

> Abajo el primer esquema de lo que seran los workflows bioinformaticos de cada proyecto, los cuales iremos modificando a medida que vayamos avanzando.  


proyecto **toñitos** | workflow bioinformatico | *denovo*
-
a. Reunir todos los 'replicates' en un mismo directorio, de acuerdo a lo descrito por [Mastretta-Yanes et al](https://github.com/pesalerno/MingaGenomica2019/blob/master/lecturas/Mastretta-Yanes-etal-2015.pdf).

b. Ponerle los nombres a los replicates acorde con lo necesario: 

> Sample1 (original), Sample1_r (replicate)

c. Hacer el diseño de los parametros a probar con los replicates basado en [este tutorial](http://catchenlab.life.illinois.edu/stacks/param_tut.php) y [esta publicacion](https://github.com/pesalerno/MingaGenomica2019/blob/master/lecturas/Paris-etal-2017.pdf). 

d. Montar todos los replicate analyses en el servidor **correns.csu**

e. Intentar instalar MySQL con ayuda de nuuestro bioinformatico, tal vez... si no, pedimos ayuda a Chris K en este paso (creo que es lo mejor basado en experiencias previas). 

f. Terminar el workflow de los 'replicate analyses' siguiendo el workflow de daryl en nuestro proyecto de los [**pumas**](https://github.com/pesalerno/PUMAgenomics).

g. Concatenar los archivos de los duplicados, en un directorio separado, utilizando `cat` y exportando a un archivo nuevo, algo asi: 

	cat seqfile001.fasta seqfile002.fasta > seqcombined.fasta

h. Correr **denovo_map.pl** con todas las muestras utilizando los parametros ideales basados en las tasas de error calculadas en los pasos anteriores. 


proyecto jimmys | workflow bioinformatico | *denovo*
-

a. Diseñar parametros y combinaciones a probar en STACKS, utilizando solo jimenezi (excluir a traves de popmap o a traves de `mv` (mover los archivos) y `mkdir` a un nuevo directorio. 

b. Montar todos los analisis denovo en el servidor **correns.csu**

> Hablaremos un poco de servidores, de 'job schedulers', y de como funciona el 'secure shell'. 

![secure-shell](https://github.com/pesalerno/MingaGenomica2019/blob/master/fotos/correns.png)

c. Diseñar los distintos clustering thresholds que seran utilizados en ipyrad para todas las muestras (aunque tal vez con un 'subset' de jimenezi), utilizando como base este excelente [tutorial de ipyrad](https://ipyrad.readthedocs.io/tutorial_intro_cli.html) y tambien la siguiente figura:

![figura-3a](https://github.com/pesalerno/MingaGenomica2019/blob/master/lecturas/Figure-3a.png) 

d. Montar los analisis de ipyrad en el servidor. 


proyecto bichitos | workflow bioinformatico | *denovo*
-
a. 



Semana 7
--

Una vez escogida la combinacion ideal de parametros en stacks y en ipyrad para el de novo genotyping, debemos exportar y filtrar la matriz de SNPs para tener ya nuestras matrices finales para los analisis 'downstream' de nuestros datos genomicos... para finalmente responder preguntas biologicas!! Para esto, vamos a tener que hacer unos cuantos pasos bioinformaticos (grep, awk, etc) para unir los pasos del *'pipeline'*, principalmente usando [plink](http://zzz.bwh.harvard.edu/plink/download.shtml) y [populations](http://catchenlab.life.illinois.edu/stacks/comp/populations.php)de **stacks**. 

**plink | filtrando datos**

blah blah blah

**stacks | populations: exportando matriz final**

blah blah blah

Semana 8
---

Una vez filtradas nuestras matrices, ya podemos comenzar a analizar nuestros datos. En este caso, el primer analisis, en cierta forma exploratorio, que haremos con la matriz obtenida en **stacks** seran analisis basicos de estructura poblacional (PCA, DAPC) en [adegenet](http://adegenet.r-forge.r-project.org/files/tutorial-basics.pdf) en R, y con los datos obtenidos en **ipyrad** correremos un analisis filogenetico de coalescencia con soportes de bootstrapping utilizando [SVDquartets](https://www.asc.ohio-state.edu/kubatko.2/software/SVDquartets/), el cual es implementado en el programa [PAUP*](http://paup.phylosolutions.com/). 

**adegenet | estructura poblacional**

blah blah blah

**SVDquartets | analisis filogenetico**

blah blah blah
