# bliss
Repo for bliss pipeline

bash ./bin/bliss.sh expName human ./patterns/patfile-name MapQuality /home/garner1/Work/dataset

Where the parameters could be like these:

expName = "MN30" (specify the name of the experiment)

human = "human" (specify the genome)

./patterns/patfile-name = "./patterns/BB101_Milan-5-04_CATCAATC" (location of the file containing UMI and barcode specs)

MapQuality = "30" (mapping quality threshold)

/home/garner1/Work/dataset = (location of the dir containing the fastq files)

NOTE that some parameters, like the number of processors, are hard-coded in the ./bin/bliss.sh script.

Requires (at least):

gnu parallel

scan_for_matches
