#! /bin/bash

frompath=~/MG5_aMC_v2_6_6/bin/bbb
topath=~/bbb

for b_s in background signal
do
	if [ ${b_s} == background ]; then
		for final_state in bbb bbj bjj jjj
		do
			i = 0
			while [[ i -le 9 ]]; do
				real_from = ${frompath}/${b_s}/${final_state}/Events/run_01_${i}
				real_to = ${topath}/${b_s}/${final_state}
				\cp ${real_from}/tag_1_delphes_events.lhco.gz ${real_to}/${i}.lhco.gz
				i++
			done
		done	
	else
		for final_state in 200 400 600 800 1000
		do
			i = 0
			while [[ i -le 9 ]]; do
				real_from = ${frompath}/${b_s}/${final_state}/Events/run_01_${i}
				real_to = ${topath}/${b_s}/${final_state}
				\cp ${real_from}/tag_1_delphes_events.lhco.gz ${real_to}/${i}.lhco.gz
				i++
			done
		done	
	fi	
done