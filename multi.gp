# Instellingen voor multiplot
# 1920,640 x,y
set terminal pngcairo size 1920,2560 enhanced font 'Verdana,10'
set output "multi_changeability.png"

# rij, kolom
set multiplot layout 3,1

script_to_load = "changeability.gp"

# Eerste plot
data_file = "data_31_12_2019.csv"
data_title = "Period 2019-12-31 - 2020-06-30"
load script_to_load

# Tweede plot
data_file = "data_29_06_2021.csv"
data_title = "Period 2021-06-29 - 2021-12-28"
load script_to_load

# Derde plot
data_file = "data_28_06_2022.csv"
data_title = "Period 2022-06-28 - 2022-12-27"
load script_to_load

unset multiplot
set output

