#! /bin/bash

mg5path=~/MG5_aMC_v2_6_6/bin/
txtpath=~/bbb/mg5_txt
toolpath=~/bbb
outputpath=~/MG5_aMC_v2_6_6/bin/bbb/signal

for MSIX2 in 200 400 600 800 1000

do

	cp $txtpath/mg5_bbb_sg_${MSIX2}_1.txt $mg5path
	cp $txtpath/mg5_bbb_sg_${MSIX2}_2.txt $mg5path
	cd $mg5path
	./mg5_aMC mg5_bbb_sg_${MSIX2}_1.txt
	rm -f $mg5path/mg5_bbb_sg_${MSIX2}_1.txt

	\cp -rf $toolpath/run_delphes3 $outputpath/${MSIX2}/bin/internal
	cd $mg5path
	./mg5_aMC mg5_bbb_sg_${MSIX2}_2.txt
	rm -f $mg5path/mg5_bbb_sg_${MSIX2}_2.txt
	cd $outputpath/${MSIX2}/Events
	find . -name "*.root" -exec rm -rf {} \;
	find . -name "*.hepmc.gz" -exec rm -rf {} \;

done