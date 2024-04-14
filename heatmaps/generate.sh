#!/bin/bash

while true; do
    echo "Select OSS category:"

    options=("Stagnant" "Attractive" "Fluctuating" "Terminal" "Analysability" "Analysability percents" "Testability" 
    "Testability percents" "Changeability" "Changeability percents" "Overall" "Overall percents" 
    "Analysability total (no OSS categories)"
    "Changeability total (no OSS categories)"
    "Testability total (no OSS categories)"
    "Overall total (no OSS categories)"
    )

    select opt in "${options[@]}"
    do
        case $opt in
            "Stagnant")
                gnuplot -e "data_file='stagnant.dat'" -e "data_title='stagnant'" heatmap_by_date_all_rankings.gp
                break
                ;;
            "Attractive")
                gnuplot -e "data_file='attractive.dat'" -e "data_title='attractive'" heatmap_by_date_all_rankings.gp
                break
                ;;
            "Fluctuating")
                gnuplot -e "data_file='fluctuating.dat'" -e "data_title='fluctuating'" heatmap_by_date_all_rankings.gp
                break
                ;;
            "Terminal")
                gnuplot -e "data_file='terminal.dat'" -e "data_title='terminal'" heatmap_by_date_all_rankings.gp
                break
                ;;
            "Analysability")
                gnuplot -e "data_file='analysability.dat'" -e "data_title='analysability'" heatmap_by_date_all_oss_categories.gp
                break
                ;;            
            "Testability")
                gnuplot -e "data_file='testability.dat'" -e "data_title='testability'" heatmap_by_date_all_oss_categories.gp
                break
                ;;            
            "Changeability")
                gnuplot -e "data_file='changeability.dat'" -e "data_title='changeability'" heatmap_by_date_all_oss_categories.gp
                break
                ;;            
            "Overall")
                gnuplot -e "data_file='overall.dat'" -e "data_title='overall'" heatmap_by_date_all_oss_categories.gp
                break
                ;;
            "Overall percents")
                gnuplot -e "data_file='overall_percents.dat'" -e "data_title='overall'" heatmap_by_date_all_oss_categories_percents.gp
                break
                ;;            
            "Analysability percents")
                gnuplot -e "data_file='analysability_percents.dat'" -e "data_title='analysability'" heatmap_by_date_all_oss_categories_percents.gp
                break
                ;;            
            "Changeability percents")
                gnuplot -e "data_file='changeability_percents.dat'" -e "data_title='changeability'" heatmap_by_date_all_oss_categories_percents.gp
                break
                ;;            
            "Testability percents")
                gnuplot -e "data_file='testability_percents.dat'" -e "data_title='testability'" heatmap_by_date_all_oss_categories_percents.gp
                break
                ;;
            "Analysability total (no OSS categories)")
                gnuplot -e "data_file='analysability_all_no_oss_categories.dat'" -e "data_title='analysability'" heatmap_by_date_no_oss_categories.gp
                break
                ;;                                      
            "Changeability total (no OSS categories)")
                gnuplot -e "data_file='changeability_all_no_oss_categories.dat'" -e "data_title='changeability'" heatmap_by_date_no_oss_categories.gp
                break
                ;;                                      
            "Testability total (no OSS categories)")
                gnuplot -e "data_file='testability_all_no_oss_categories.dat'" -e "data_title='testability'" heatmap_by_date_no_oss_categories.gp
                break
                ;;                            
            "Overall total (no OSS categories)")
                gnuplot -e "data_file='overall_all_no_oss_categories.dat'" -e "data_title='overall'" heatmap_by_date_no_oss_categories.gp
                break
                ;;                                            
            *) echo "Ongeldige optie $REPLY";;
        esac
    done
done
