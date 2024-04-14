# Reset alle instellingen
reset

# Datafile specificatie
datafile = 'bar_data.txt'

set terminal png size 800,600
set output 'barchart.png'

# Zet enkele standaard grafiekstijlen
set style data histograms
set style histogram rowstacked
set style fill solid 1.0 border -1
set boxwidth 0.75

# Zet labels en titels
set xlabel "Waarden"
set ylabel "Categorieën"
set title "Analyse van OSS categorieën"

# Definieer kleuren voor de rankings
set style fill solid 1.0 noborder
set boxwidth 0.5

# Zet de legenda (key) op een handige locatie
set key autotitle columnhead outside

# Draai de tics op de y-as en zet het bereik
set ytics nomirror rotate by -45
set yrange [-1:]

# Geef de kolommen aan die gebruikt moeten worden voor de staafdiagrammen
Analysability = 3
Changeability = 4
Testability = 5

# Plot de data
plot datafile using Analysability:xtic(1) title "Analysability" lt rgb "red", \
     '' using Changeability title "Changeability" lt rgb "blue", \
     '' using Testability title "Testability" lt rgb "green"

