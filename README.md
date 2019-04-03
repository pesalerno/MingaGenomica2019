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

Semana 4, 5, y 6...
---

**STACKS | *de novo* genotyping**

En la cuarta semana empezaremos a hacer el genotyping utilizando el programa [denovo_map](http://catchenlab.life.illinois.edu/stacks/comp/denovo_map.php) en stacks. Para esto, es recomendable que se lean con mucho detenimiento esta publicacion de [Paris et al. 2017](https://github.com/pesalerno/MingaGenomica2019/blob/master/lecturas/Paris-etal-2017.pdf), en la que se describen muchas de las cosas que estaremos haciendo y los problemas que estaremos investigando en los proximos pasos de la minga. 

Duraremos 2-4 semanas en el *denovo genotyping*, y en el proceso tambien estaremos graficando analisis preliminares en R utilizando el programa de genomica poblacional, [adegenet](http://adegenet.r-forge.r-project.org/), para observar potenciales sesgos dentro de nuestros datos. Dado que hay que correr el analisis *denovo* muchas veces para evaluar como las distintas combinaciones de parametros pueden resultar en distintas proporciones de alelos retenidos y en distintas proporciones de error. En este paso, cada liberia/proyecto tendra condiciones muy distintas que resultaran en que corramos distintos analisis, y que escojamos distintos parametros! Esto se discutira. Intentaremos graficar nuestros resultados utilizando R para que sean publicables como graficos suplementarios, asi como las figuras de Paris et al! 

**ipyrad | *de novo* genotyping of subset**

Mientras terminan de correr nuestros analisis denovo en stacks, vamos a montar analisis de genotyping en [ipyrad](https://ipyrad.readthedocs.io/) pero de un 'subset' de nuestros individuos. Para esto, es posible que necesitemos que se termine al menos uno de nuestros analisis de stacks y hacer un analisis rapido en adegenet para escoger el 'subset'. 

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
