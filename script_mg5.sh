#! /bin/bash

mg5path=/home/gangli/Documents/Simulation/MG5_aMC_v2_3_3/bin/
txtpath=/home/gangli/Documents/Simulation/MG5_aMC_v2_3_3/bin/TOPEFT_Project/decay/mg5_txt

# cp $txtpath/mg5_topdecay_SM.txt $mg5path
# cd $mg5path
# ./mg5_aMC mg5_topdecay_SM.txt
# rm -f $mg5path/mg5_topdecay_SM.txt
#
# cp $txtpath/mg5_topdecay_CtW_int.txt $mg5path
# cd $mg5path
# ./mg5_aMC mg5_topdecay_CtW_int.txt
# rm -f $mg5path/mg5_topdecay_CtW_int.txt
#
# cp $txtpath/mg5_topdecay_CtW_sq.txt $mg5path
# cd $mg5path
# ./mg5_aMC mg5_topdecay_CtW_sq.txt
# rm -f $mg5path/mg5_topdecay_CtW_sq.txt
#
cp $txtpath/mg5_topdecay_Cqq_int.txt $mg5path
cd $mg5path
./mg5_aMC mg5_topdecay_Cqq_int.txt
rm -f $mg5path/mg5_topdecay_Cqq_int.txt
#
# cp $txtpath/mg5_topdecay_Cqq_sq.txt $mg5path
# cd $mg5path
# ./mg5_aMC mg5_topdecay_Cqq_sq.txt
# rm -f $mg5path/mg5_topdecay_Cqq_sq.txt
