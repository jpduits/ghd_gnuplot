# Set terminal type and output file
#reset


# Eerste plot
data_file = "../data_31_12_2019.csv"
data_title = "Period 2019-12-31 - 2020-06-30"



# DISABLE WITH MULTI
set terminal pngcairo
set output 'heatmap.png'

# Stel de pm3d-stijl in
set pm3d map

# Stel de kleurenpalet in op basis van de mogelijke waarden in kolom 4
set palette defined (0 "purple", 1 "red", 2 "orange", 3 "yellow", 4 "green", 5 "green")

# Stel de xrange en yrange in op basis van de maximale en minimale waarden van x en y
set xrange [0:1.2]
set yrange [0:0.5]

# Drempels voor x en y
x_threshold = 0.25
y_threshold = 0.06107291

# Creëer de vier vakken door te controleren waar elke x en y waarde valt
# en kleur gebaseerd op de waarde in kolom 4
splot data_file using (column(1) > x_threshold ? (column(1) < 2 * x_threshold ? 2 * x_threshold : column(1)) : column(1)) : \
                                     (column(2) > y_threshold ? (column(2) < 2 * y_threshold ? 2 * y_threshold : column(2)) : column(2)) : \
                                     (column(4)) with image



#mediaan magnet: 0,06107291
#mediaan sticky: 0,25
