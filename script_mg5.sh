#! /bin/bash

mg5path=~/MG5_aMC_v2_6_6/bin/
txtpath=~/bbb/mg5_txt
toolpath=~/bbb

# cp $txtpath/mg5_bbb_bk_bbj1.txt $mg5path
# cp $txtpath/mg5_bbb_bk_bbj2.txt $mg5path
# cd $mg5path
# ./mg5_aMC mg5_bbb_bk_bbj1.txt
# rm -f $mg5path/mg5_bbb_bk_bbj1.txt

# \cp -rf $toolpath/run_delphes3 $mg5path/bbb/background/bbj/bin/internal
# cd $mg5path
# ./mg5_aMC mg5_bbb_bk_bbj2.txt
# rm -f $mg5path/mg5_bbb_bk_bbj2.txt
# cd $mg5path/bbb/background/bbj/Events
# find . -name "*.root" -exec rm -rf {} \;
# find . -name "*.hepmc.gz" -exec rm -rf {} \;

cp $txtpath/mg5_bbb_bk_bjj1.txt $mg5path
cp $txtpath/mg5_bbb_bk_bjj2.txt $mg5path
cd $mg5path
./mg5_aMC mg5_bbb_bk_bjj1.txt
rm -f $mg5path/mg5_bbb_bk_bjj1.txt

\cp -rf $toolpath/run_delphes3 $mg5path/bbb/background/bjj/bin/internal
cd $mg5path
./mg5_aMC mg5_bbb_bk_bjj2.txt
rm -f $mg5path/mg5_bbb_bk_bjj2.txt
cd $mg5path/bbb/background/bjj/Events
find . -name "*.root" -exec rm -rf {} \;
find . -name "*.hepmc.gz" -exec rm -rf {} \;

cp $txtpath/mg5_bbb_bk_jjj1.txt $mg5path
cp $txtpath/mg5_bbb_bk_jjj2.txt $mg5path
cd $mg5path
./mg5_aMC mg5_bbb_bk_jjj1.txt
rm -f $mg5path/mg5_bbb_bk_jjj1.txt

\cp -rf $toolpath/run_delphes3 $mg5path/bbb/background/jjj/bin/internal
cd $mg5path
./mg5_aMC mg5_bbb_bk_jjj2.txt
rm -f $mg5path/mg5_bbb_bk_jjj2.txt
cd $mg5path/bbb/background/jjj/Events
find . -name "*.root" -exec rm -rf {} \;
find . -name "*.hepmc.gz" -exec rm -rf {} \;