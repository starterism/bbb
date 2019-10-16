#! /bin/bash

frompath=~/MG5_aMC_v2_6_6/bin/bbb
topath=~/bbb
i=0

for b_s in background signal
do
	if [ ${b_s} == background ]; then
		for final_state in bbb bbj bjj jjj
		do
			${i} = 0
			while [[ ${i} -le 9 ]]; do
				\cp ${frompath}/${b_s}/${final_state}/Events/run_01_${i}/tag_1_delphes_events.lhco.gz ${topath}/${b_s}/${final_state}/${i}.lhco.gz
				((${i}++))
			done
		done	
	else
		for final_state in 200 400 600 800 1000
		do
			${i} = 0
			while [[ ${i} -le 9 ]]; do
				\cp ${frompath}/${b_s}/${final_state}/Events/run_01_${i}/tag_1_delphes_events.lhco.gz ${topath}/${b_s}/${final_state}/${i}.lhco.gz
				((${i}++))
			done
		done	
	fi	
done