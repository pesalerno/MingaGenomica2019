MingaGenomica2019
====

Bienvenidos a la **Minga Genomica PUCE 2019!** En esta especie de taller de *'iniciacion a la bioinformatica'* para ecologos y biologos evolutivos basados en Quito, estaremos colaborando en nuestros proyectos genomicos (con datos reales de proxima generacion obtenidos recientemente a traves del protocolo ddRAD) a medida que aprendemos los pasos bioinformaticos para obtener una matriz de SNPs y publicar nuestros datos genomicos! 

Para cada proyecto, creamos un repositorio donde colocamos todos los pasos del workflow bioinformatico, para asi tener datos abiertos y perfecto seguimiento de todos los pasos una vez sea publicado el manuscrito. Aca estan los repositorios respectivos: 

1. Proyecto 1: [**HypsiBoana de la Gran Sabana**](https://github.com/pesalerno/Hypsiboas-genomics)
2. Proyecto 2: [**Genomica poblacional de insectos glaciares**]()
3. Proyecto 3: [**Flujo genico y fenotipo de ranas venenosas**]()

------

>Antes que nada, es importante que comiencen a familiarizarse con lo que yo llamo *'hablarle al computador'*, es decir, entender el ambiente del **bash/shell**. Para eso, por favor lean esta leccion de 10 minutos de [comenzando con shell](https://swcarpentry.github.io/shell-novice/01-intro/index.html) ademas de unicamente las primeras dos secciones (**home directory variation** y **slashes**) de la [segunda leccion de shell](https://swcarpentry.github.io/shell-novice/02-filedir/index.html) para que asi ya estemos un poquito familarizados con este ambiente y con el concepto de no tener una interface GUI!

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


Para **ipyrad** lo mas importante es entender [este tutorial](https://ipyrad.readthedocs.io/tutorial_intro_cli.html), pero tambien pueden simplemente leerlo durante la minga a medida que montan los analisis basado en el tutorial. 



Duraremos 2-4 semanas en el *denovo genotyping*, y en el proceso tambien estaremos graficando analisis preliminares en R utilizando el programa de genomica poblacional, [adegenet](http://adegenet.r-forge.r-project.org/), para observar potenciales sesgos dentro de nuestros datos. Tambien estaremos intentando escribir todos los metodos y resultados de la genotipificacion, incluyendo informacion de coverage por individuos, parametros usados y razonamiento, filtros, etc. 

Tanto de **stacks** como de **ipyrad** estaremos extrayendo muchisima informacion acerca de resultados de genotipificacion, asi como es el caso de stacks, donde se obtiene toda la informacion de coverage y fragmentos secuenciados por individuo, lo cual debe ser reportado en resultados: 

![stacks-coverage](https://github.com/pesalerno/MingaGenomica2019/blob/master/fotos/stacks.png)


Dado que los cuatro proyectos de la minga son tan distintos, cada liberia/proyecto tendra condiciones muy distintas! Esto se discutira en clase. 


filtrando matrices
--

Una vez escogida la combinacion ideal de parametros en stacks y en ipyrad para el de novo genotyping, debemos exportar y filtrar las matrices de SNPs para tener ya nuestras matrices finales para los analisis *'downstream'* de nuestros datos genomicos... para finalmente responder preguntas biologicas!! Para esto, vamos a tener que hacer unos cuantos pasos bioinformaticos (grep, awk, etc) para unir los pasos del *'pipeline'*, principalmente usando [plink](http://zzz.bwh.harvard.edu/plink/download.shtml) y [populations](http://catchenlab.life.illinois.edu/stacks/comp/populations.php) de **stacks**. 


La version mas reciente de **stacks 2.0** no tiene implementado el formato `.ped` para exportar matrices de SNPs en populations, por lo que tenemos que exportar como `.vcf` y utlizar el programa [vcftools](https://vcftools.github.io/man_latest.html) tanto para transformar como para filtrar datos. Entonces, primero exportamos la matrix de **snps** en formato `.vcf` utilizando **populations**: 


    populations -P /path/to/populations/pop-comb-c/ -M /path/to/popmap/pop-map.txt -fstats -p 1 -r 0.2  -t 8 --structure --genepop --vcf --write_random_snp


Luego, debemos instalar **vcftools** para poder transformar el archivo a `.ped` y filtrar en plink. Como la version mas reciente de **vcftools** no parece funcionar (consistentemente en tres distintas maquinas OSX!), entonces intalemos una [version vieja de **vcftools**](https://sourceforge.net/projects/vcftools/files/vcftools_0.1.13.tar.gz/download), el cual se debe bajar automaticamente haciendo click en el link anterior, y luego lo descomprimimos utilizando el siguiente codigo: 

	tar -xvf vcftools.version

Luego hacemos `cd` al directorio nuevo de vcftools, y escribimos: 

	./configure ##puede que este paso no sea necesario, vean primero si tienen el archivo "makefile"
	make
	make install

Si todo sale bien, deberiamos ya tener **vcftools** instalado en ese mismo directorio. Entonces, podemos transformar nuestro archivo de esta manera: 

	vcftools --vcf path/to/file.vcf --plink --out filename

**plink | filtrando datos**

Primero, instalemos **plink** bajando la [version binaria estable](http://zzz.bwh.harvard.edu/plink/download.shtml#download) de la pagina web, el cual no hay que compilar y con solo hacerle doble click al comprimido ya deberia darnos el ejecutable de plink dentro del directorio nuevo. 


Ahora que tenemos nuestros archivos `.ped` y `.map`, podemos correr los filtros en plink, uno por uno, de la siguiente manera. 


Primero filtramos loci con demasiados datos que faltan:

    ./plink --file input-name --geno 0.5 --recode --out output-filename_a --noweb

Segundo, filtramos individuos con muchos datos que faltan: 

    ./plink --file input-filename_a --mind 0.5 --recode --out output-filename_b --noweb

Tercero, filtramos basado en frecuencia alelica menor (MAF): 

    ./plink --file input-filename_b --maf 0.01 --recode --out output-filename_c --noweb

Puede que sea bueno investigar el efecto de distintos *'minor allele frequency thresholds'*, por lo que es bueno generar varios outputs con maf 0.01, 0.02, y 0.05, para luego ver en **adegenet** (ver abajo) si hay alguna relacion entre *maf threshold* y estructura poblacional. 

Ahora, veamos que tanto *'linkage'* hay en nuestros datos, con el siguiente codigo: 

    ./plink --file input-filename_c --r2 --out outputfilename
    
Es necesario eliminar loci basado en el analisis? De ser el caso, crear un 'blacklist' para excluir en plink con el codigo: 
    
    ./plink --file filename --exclude LD-loci-list.txt --recode --out LD-filtered

>El blacklist debe estar en formato de un SNP por linea, con la identidad completa (locus mas posicion del SNP).

Finalmente, tambien podemos ver como varia el numero de SNPs de acuerdo a la posicion dentro del locus de RAD genotipificado, utilizando el siguiente codigo, visualizando los SNPs desde la posicion `/_80/` hasta `/_96/` con el siguiente codigo: 

	cat loci-rows.txt | awk '/_80/ {count++} END {print count}'
	cat loci-rows.txt | awk '/_81/ {count++} END {print count}'
	...
	cat loci-rows.txt | awk '/_96/ {count++} END {print count}'


Se observa algun incremento muy alto en la frecuencia de SNPs hacia el final del locus? Vale la pena filtrar? De ser el caso, utilizar el siguiente codigo: 

	cat loci_rows-to-filter.txt | awk '/_95/ {print}' > blacklist_95.txt

Para crear el blacklist de los loci, para luego excluirlos en plink: 

	plink --file Puma-filtered-maf_01 --exclude blacklist_95.txt --recode --out filtered_b --noweb


Estimando endogamia a nivel individual 
--
Tambien, preferiblemente una vez estimado y filtrado el linkage, podemos estimar endogamia (inbreeding) a nivel individual con el siguiente codigo: 

	plink --noweb --file mydata --het --out outputfilename

Esto nos da un archivo `.het` el cual tiene un valor, **F** y que es un estimado de inbreeding basado en niveles de heterocigosidad esperada y observada. 


exportando matriz final en stacks | populations
-- 

Para obtener todas nuestras matrices y estadisiticas poblacionales finales, utilizamos un *'whitelist'* de los loci (lista de loci para incluir, todo lo demas se excluye) y los individuos (usando un nuevo popmap) que pasaron todos los filtros de plink, y re-exportamos las matrices, en conjunto con estadisticas poblacionales de Fst, heterocigosidad, etc, para tener ciertas estadisticas importantes para reportar, y ademas ya llevar a cabo los analisis *downstream* con matrices limpias y con menos potenciales de errores. 

El *whitelist* a usar en el programa **populations** se puede generar facilmente abriendo el archivo `.map` en **TextWrangler** (o editor de texto similar) y haciendo `grep` (find/replace, pero asegurandose se que grep esta seleccionado: 

![grep-check](https://github.com/pesalerno/MingaGenomica2019/blob/master/fotos/BBedit_grep.png)

 y usamos el siguiente codigo: 

	#search for: 
	\d\t(\d*)_\d*\t\d\t\d*$
	#replace with: 
	\1 

El whitelist para **populations** solo debe tener un locus por linea, sin la posicion del SNP asociado: 

	3
	7
	521
	11
	46

Finalmente, volvemos a correr el programa populations, utilizando un *"whitelist"*  para exportar los SNPs basados en los filtros hecho en los pasos anteriores, y para asi obtener estadisticas y matrices finales. Se utiliza el siguiente codigo: 

	populations -P ./path/to/denovo/outputs -M ./path/to/popmap.txt  -p 1 -r 0.1 -W SNPs_whitelist --write_random_snp --structure --vcf --genepop --fstats --phylip

>OJO: revisar el codigo de arriba para asegurarse de que todo sirve en populations de la version de [stacks 2.0!](http://catchenlab.life.illinois.edu/stacks/comp/populations.php)! 
    
Semana 8
---

Una vez filtradas nuestras matrices, ya podemos comenzar a analizar nuestros datos. En este caso, el primer analisis, en cierta forma exploratorio, que haremos con la matriz obtenida en **stacks** seran analisis basicos de estructura poblacional (PCA, DAPC) en R. 


**adegenet | estructura poblacional**

en esta etapa, es una buena idea correr el codigo basico de [adegenet](http://adegenet.r-forge.r-project.org/files/tutorial-basics.pdf) (PCA, DAPC, etc) para evaluar potenciales efectos de distintos *maf filter thresholds* en la estructura poblacional, asi como se ha encontrado en [esta publicacion reciente](https://github.com/pesalerno/MingaGenomica2019/blob/master/lecturas/MAF-thresholds.pdf). El codigo general que usaremos sera basado en [este](https://github.com/pesalerno/MingaGenomica2019/blob/master/adegenet_minga.R), pero mantengan en mente que los multiples **tutoriales/vignettes** de adegenet son excelentes y muy faciles de entender! 



**PCAdapt | genome scan for FST outlier loci**

podemos separar las matrices (o los loci) basado en si son potencialmente neutrales o no, dependiendo de los analisis de interes para cada proyecto. Pueden basarse en [este codigo](https://github.com/pesalerno/MingaGenomica2019/blob/master/PCAdapt-minga.R) para comenzar a hacer los analisis, pero tendran que ver de acuerdo a cada matriz de datos.  


**SVDquartets | analisis filogenetico**

si es de interes, podemos correr unos analisis filogeneticos rapidos (pero buenos en cuanto a metodologia) usando [SVDquartets](https://www.asc.ohio-state.edu/kubatko.2/software/SVDquartets/), el cual es implementado en el programa [PAUP\*](http://paup.phylosolutions.com/) y genera *species trees* con soportes de bootstrap. 

