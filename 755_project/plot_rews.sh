grep eprewmean checkpoint_ckpts/log.txt  | awk 'BEGIN{FS="|"} { print NR $3 }' | gnuplot -p -e "set terminal png size 400,300; set output 'ckpt_eprewmean.png'; plot '< cat -' with lines title 'reward'"