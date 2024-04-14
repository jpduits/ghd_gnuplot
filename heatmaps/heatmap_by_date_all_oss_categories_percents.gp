# Instellen van de output
set terminal pngcairo size 900,1550
set output 'heatmap_by_date_all_oss_categories_'.data_title.'_percents.png'

# Bereik en marges
set xrange [0:19.2]
set yrange [0:38.4]

set tmargin at screen 0.95
set bmargin at screen 0.01
set lmargin at screen 0.04
set rmargin at screen 0.9

unset key
set style fill solid


# 2* delta, verticale lijnen
set xtics textcolor rgb "white" 0.6 scale 0
set ytics textcolor rgb "white" 0.6 scale 0
# stipellijn in het grid
set grid front lt 0, lt 0

set title "Rankings for ".data_title." (percentage)" font "Helvetica,14" offset 0,1

set label "Attractive ↓" at 1, 38.8 front font "Helvetica,11"
set label "Fluctuating ↓" at 5.7, 38.8 front font "Helvetica,11"
set label "Stagnant ↓" at 11, 38.8 front font "Helvetica,11"
set label "Terminal ↓" at 16, 38.8 front font "Helvetica,11"


# Data: x, y, xdelta, ydelta, value
# De waarde bepaalt de kleur
#$DATA << EOD
#0.3 38.1 0.3 0.3 5 1 2019-01-01 2019-07-02
#0.9 38.1 0.3 0.3 5 2 2019-01-01 2019-07-02
#1.5 38.1 0.3 0.3 5 3 2019-01-01 2019-07-02
#EOD

# Kleurenpalet
set palette defined (1 'purple', 2 'red', 3 'orange', 4 '#edf75e', 5 'green')

# Handmatig instellen van de kleurenbereik (color box range)
set cbrange [1:5]
set cbtics ("--" 1, "-" 2, "o" 3, "+" 4, "++" 5)
set cbtics font ",8"


# Horizontal lijnen
set arrow from 0, 4.8 to 19.2, 4.8 nohead lc rgb "black" front 
set arrow from 0, 9.6 to 19.2, 9.6 nohead lc rgb "black" front 
set arrow from 0, 14.4 to 19.2, 14.4 nohead lc rgb "black" front 
set arrow from 0, 19.2 to 19.2, 19.2 nohead lc rgb "black" front 
set arrow from 0, 24 to 19.2, 24 nohead lc rgb "black" front 
set arrow from 0, 28.8 to 19.2, 28.8 nohead lc rgb "black" front 
set arrow from 0, 33.6 to 19.2, 33.6 nohead lc rgb "black" front 

# Verticale lijnen
set arrow from 4.8, 0 to 4.8, 38.4 nohead lc rgb "black" front 
set arrow from 9.6, 0 to 9.6, 38.4 nohead lc rgb "black" front 
set arrow from 14.4, 0 to 14.4, 38.4 nohead lc rgb "black" front 



#set label "2019-01-01 - 2019-07-02 →" at 0.15, 34.6 font ",9 bold" front
set label "2019-01-01 → 2019-07-02" at screen 0.02, graph 0.880 rotate by 90 font ",9 bold" front

#set label "2019-07-02 - 2019-12-31 →" at 0.15, 29.8 font ",9 bold" front
set label "2019-07-02 → 2019-12-31" at screen 0.02, graph 0.755 rotate by 90 font ",9 bold" front

#set label "2019-12-31 - 2020-06-30 →" at 0.15, 25 font ",9 bold" front
set label "2019-12-31 → 2020-06-30" at screen 0.02, graph 0.630 rotate by 90 font ",9 bold" front

#set label "2020-06-30 - 2020-12-29 →" at 0.15, 20.2 font ",9 bold" front
set label "2020-06-30 → 2020-12-29" at screen 0.02, graph 0.505 rotate by 90 font ",9 bold" front

#set label "2020-12-29 - 2021-06-29 →" at 0.15, 15.4 font ",9 bold" front
set label "2020-12-29 → 2021-06-29" at screen 0.02, graph 0.385 rotate by 90 font ",9 bold" front

#set label "2021-06-29 - 2021-12-28 →" at 0.15, 10.6 font ",9 bold" front
set label "2021-06-29 → 2021-12-28" at screen 0.02, graph 0.260 rotate by 90 font ",9 bold" front

#set label "2021-12-28 - 2022-06-28 →" at 0.15, 5.8 font ",9 bold" front
set label "2021-12-28 → 2022-06-28" at screen 0.02, graph 0.135 rotate by 90 font ",9 bold" front

#set label "2022-06-28 - 2022-12-27 →" at 0.15, 1 font ",9 bold" front
set label "2022-06-28 → 2022-12-27" at screen 0.02, graph 0.01 rotate by 90 font ",9 bold" front


# Labels en plotcommando's
plot data_file using 1:2:3:4:5 with boxxyerrorbars palette notitle, '' using 1:2:(sprintf("%g", $6)) with labels font ",8" textcolor "black" offset char 0,0 notitle






