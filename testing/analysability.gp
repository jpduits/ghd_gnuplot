# Set terminal type and output file
#reset


# Eerste plot
data_file = "../data_31_12_2019.csv"
data_title = "Period 2019-12-31 - 2020-06-30"



# DISABLE WITH MULTI
set terminal pngcairo
set output 'analysability.png'

# Define the color palette
# Hier aangenomen dat 1 overeenkomt met rood en 5 met groen, pas dit aan indien nodig
set palette defined (1 'purple', 2 'red', 3 'orange', 4 '#edf75e', 5 'green')

# Define the mapping from quality string to numerical value
kwaliteit_mapping(s) = (s eq "++") ? 5 : (s eq "+") ? 4 : (s eq "o") ? 3 : (s eq "-") ? 2 : 1

# Define the style of the data
set style data points

# Set the x and y range (adjust these values based on your data)
#set autoscale
set xrange [0:1.2]
set yrange [0:0.35]

# Handmatig instellen van de kleurenbereik (color box range)
set cbrange [1:5]
set cbtics ("--" 1, "-" 2, "o" 3, "+" 4, "++" 5)

# Set point type to square and size
set pointsize 1.3


# extra lijn op de mediaan vertiaal (sticky)
set arrow from 0.25, 0 to 0.25, 0.35 nohead lc rgb "black" back # verticaal
set arrow from 0, 0.061 to 1.2, 0.061 nohead lc rgb "black" back # horizontaal

set label "Terminal" at 0.02, 0.01 font ",8" front
set label "Stagnant" at 1.05, 0.01 font ",8" front
set label "Fluctuating" at 0.02, 0.07 font ",8" front
set label "Attractive" at 1.05, 0.07 font ",8" front

set xlabel "Sticky" font ",8"
set ylabel "Magnet" font ",8"

set xtics font ",8"
set ytics font ",8"

# legenda
set cblabel "Analysability" font ",8"  # Zet de lettergrootte voor de legenda
set cbtics font ",8"

set title data_title font "Helvetica,16"

# Plot the data
# Gebruik kolom 4 voor de kleurwaarden
# read env variable
#data_file=system("echo $DATA_FILE")
plot data_file using 1:2::4 with points palette pointtype 7 notitle, \
     '' using 1:2:9 with labels offset char 0,-0.5 font ",7" textcolor rgb "grey" notitle

unset label

#set output






#mediaan magnet: 0,06107291
#mediaan sticky: 0,25
