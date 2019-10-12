#! /bin/bash

mg5path=~/MG/bin/
txtpath=~/bbb/mg5_txt

cp $txtpath/mg5_bbb_bk_bbb.txt $mg5path
cd $mg5path
./mg5_aMC mg5_bbb_bk_bbb.txt
rm -f $mg5path/mg5_bbb_bk_bbb.txt
