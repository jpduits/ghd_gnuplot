# Instellen van de output
set terminal pngcairo size 800,800
set output 'heatmap.png'

# Bereik en marges
set xrange [0:9.6]
set yrange [0:9.6]
set tmargin at screen 0.9
set bmargin at screen 0.1
set lmargin at screen 0.1
set rmargin at screen 0.9

unset key
set style fill solid


# 2* delta, verticale lijnen
set xtics textcolor rgb "white" 0.6 scale 0
set ytics textcolor rgb "white" 0.6 scale 0
# stipellijn in het grid
set grid front lt 0, lt 0




# Data: x, y, xdelta, ydelta, value
# De waarde bepaalt de kleur
$DATA << EOD
5.1 4.5 0.3 0.3 5 1
5.7 4.5 0.3 0.3 5 2
6.3 4.5 0.3 0.3 4 3
6.9 4.5 0.3 0.3 5 4
7.5 4.5 0.3 0.3 5 5
8.1 4.5 0.3 0.3 5 6
8.7 4.5 0.3 0.3 4 7
9.3 4.5 0.3 0.3 5 8
5.1 3.9 0.3 0.3 5 9
5.7 3.9 0.3 0.3 5 10
6.3 3.9 0.3 0.3 4 11
6.9 3.9 0.3 0.3 5 12
7.5 3.9 0.3 0.3 5 13
8.1 3.9 0.3 0.3 5 14
5.1 9.3 0.3 0.3 5 1
5.7 9.3 0.3 0.3 4 2
6.3 9.3 0.3 0.3 4 3
6.9 9.3 0.3 0.3 4 4
7.5 9.3 0.3 0.3 4 5
8.1 9.3 0.3 0.3 5 6
8.7 9.3 0.3 0.3 5 7
9.3 9.3 0.3 0.3 5 8
5.1 8.7 0.3 0.3 5 9
5.7 8.7 0.3 0.3 4 10
6.3 8.7 0.3 0.3 4 11
6.9 8.7 0.3 0.3 4 12
7.5 8.7 0.3 0.3 5 13
8.1 8.7 0.3 0.3 5 14
8.7 8.7 0.3 0.3 4 15
9.3 8.7 0.3 0.3 3 16
5.1 8.1 0.3 0.3 4 17
5.7 8.1 0.3 0.3 4 18
6.3 8.1 0.3 0.3 4 19
6.9 8.1 0.3 0.3 5 20
7.5 8.1 0.3 0.3 5 21
8.1 8.1 0.3 0.3 4 22
8.7 8.1 0.3 0.3 4 23
9.3 8.1 0.3 0.3 4 24
5.1 7.5 0.3 0.3 5 25
5.7 7.5 0.3 0.3 5 26
6.3 7.5 0.3 0.3 5 27
6.9 7.5 0.3 0.3 5 28
0.3 9.3 0.3 0.3 5 1
0.9 9.3 0.3 0.3 5 2
1.5 9.3 0.3 0.3 5 3
2.1 9.3 0.3 0.3 4 4
2.7 9.3 0.3 0.3 5 5
3.3 9.3 0.3 0.3 4 6
3.9 9.3 0.3 0.3 4 7
4.5 9.3 0.3 0.3 5 8
0.3 8.7 0.3 0.3 5 9
0.9 8.7 0.3 0.3 5 10
1.5 8.7 0.3 0.3 5 11
2.1 8.7 0.3 0.3 5 12
2.7 8.7 0.3 0.3 5 13
3.3 8.7 0.3 0.3 4 14
3.9 8.7 0.3 0.3 5 15
4.5 8.7 0.3 0.3 4 16
0.3 8.1 0.3 0.3 4 17
0.9 8.1 0.3 0.3 5 18
1.5 8.1 0.3 0.3 5 19
2.1 8.1 0.3 0.3 3 20
2.7 8.1 0.3 0.3 4 21
3.3 8.1 0.3 0.3 4 22
3.9 8.1 0.3 0.3 3 23
4.5 8.1 0.3 0.3 5 24
0.3 7.5 0.3 0.3 4 25
0.9 7.5 0.3 0.3 4 26
1.5 7.5 0.3 0.3 3 27
2.1 7.5 0.3 0.3 4 28
2.7 7.5 0.3 0.3 4 29
3.3 7.5 0.3 0.3 4 30
3.9 7.5 0.3 0.3 5 31
4.5 7.5 0.3 0.3 4 32
0.3 6.9 0.3 0.3 5 33
0.9 6.9 0.3 0.3 4 34
0.3 4.5 0.3 0.3 4 1
0.9 4.5 0.3 0.3 5 2
1.5 4.5 0.3 0.3 4 3
2.1 4.5 0.3 0.3 5 4
2.7 4.5 0.3 0.3 4 5
3.3 4.5 0.3 0.3 4 6
3.9 4.5 0.3 0.3 4 7
4.5 4.5 0.3 0.3 5 8
0.3 3.9 0.3 0.3 5 9
0.9 3.9 0.3 0.3 5 10
1.5 3.9 0.3 0.3 5 11
EOD

# Kleurenpalet
set palette defined (1 'purple', 2 'red', 3 'orange', 4 '#edf75e', 5 'green')

# Handmatig instellen van de kleurenbereik (color box range)
set cbrange [1:5]
set cbtics ("--" 1, "-" 2, "o" 3, "+" 4, "++" 5)
set cbtics font ",8"


# extra lijn op de mediaan vertiaal (sticky) Y,X
set arrow from 0, 4.8 to 9.6, 4.8 nohead lc rgb "black" front # verticaal
set arrow from 4.8, 0 to 4.8, 9.6 nohead lc rgb "black" front # horizontaal

# X,Y
set label "Terminal" at 0.3, 0.3 font ",12" front
set label "Stagnant" at 5.3, 0.3 font ",12" front
set label "Fluctuating" at 0.3, 5.3 font ",12" front
set label "Attractive" at 5.3, 5.3 font ",12" front


# Plot de blokjes
#plot $DATA using 1:2:3:4:5 with boxxyerrorbars palette notitle

# Labels toevoegen
#plot $DATA using 1:2:(sprintf("%g", $6)) with labels font ",10" textcolor "black" offset char 0.2,0.2 notitle

# Labels en plotcommando's
plot $DATA using 1:2:3:4:5 with boxxyerrorbars palette notitle, '' using 1:2:(sprintf("%g", $6)) with labels font ",8" textcolor "black" offset char 0,0 notitle






