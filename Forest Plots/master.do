
   * ******************************************************************** *
   * ******************************************************************** *
   *                                                                      *
   *                Replicating Forest Basal area figures                 *
   *                                                                      *                       
   *                                                                      *
   *                                                                      *
   *                                                                      *
   * ******************************************************************** *
   * ******************************************************************** *

       /*
       ** PURPOSE:      The purpose of this use the original datasets and modify them for calculaing forest plot changes  across time.  
       ** OUTLINE:      PART 0: use the original dataset.
                        PART 1: 
					
						
                    

       ** WRITEN BY:    Varnitha Kurli

       ** Last date modified:  8 September, 2018
       */

*******************************
**** PART 0: use the original dataset.
******************************** 
 global user  1
 
  if $user == 1 {
        global filepath = "/Users/varnithakurli/Dropbox/MHWDP"
   }

   if $user == 2 {
       global filepath ""  //Enter the file path to the projectfolder of next user here
   }

use "$filepath/Forest Plots/graphsForest Plot Figures _ TTests/basal_figures.dta",clear

  graph box basalarea_psm_06 basalarea_psm_11
  
  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/all.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/all.pdf", as(pdf) replace


  graph box basalarea_psm_06 basalarea_psm_11 if project == 1, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in Treatment Group")
  
  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/project.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/project.pdf", as(pdf) replace

  graph box basalarea_psm_06 basalarea_psm_11 if project == 0, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in Control Group")

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/non_project.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/non_project.pdf", as(pdf) replace
  
  graph box basalarea_psm_06 basalarea_psm_11 if panchid == 102, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in  Bhagotla Panchayat")
 
  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/Bhagotla.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/Bhagotla.pdf", as(pdf) replace 
  
  graph box basalarea_psm_06 basalarea_psm_11 if panchid == 103, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in  Bhargaon Panchayat")

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/Bhargaon.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/Bhargaon.pdf", as(pdf) replace 
  
  graph box basalarea_psm_06 basalarea_psm_11 if panchid == 104, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in  Malindi Panchayat")

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/Malindi.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/Malindi.pdf", as(pdf) replace
  
  graph box basalarea_psm_06 basalarea_psm_11 if panchid == 105, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in  Andheri Panchayat")

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/Andheri.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/Andheri.pdf", as(pdf) replace
  
  graph box basalarea_psm_06 basalarea_psm_11 if panchid == 106, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in  Shivpur Panchayat")

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/Shivpur.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/Shivpur.pdf", as(pdf) replace
  
  graph box basalarea_psm_06 basalarea_psm_11 if panchid == 107, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in  Khalanu Panchayat")

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/Khalanu.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/Khalanu.pdf", as(pdf) replace
  
  graph box basalarea_psm_06 basalarea_psm_11 if panchid == 108, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in  Bagoda Panchayat")

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/Bagoda.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/Bagoda.pdf", as(pdf) replace
  
  graph box basalarea_psm_06 basalarea_psm_11 if panchid == 110, legend(order(1 "Basal area per sqm in 2006" 2 "Basal area per sqm in 2011")) ytitle("Basal Area") title("Box Plot for Basal Area per sqm in   Mailan Panchayat")

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/Mailan.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/Mailan.pdf", as(pdf) replace
  
  
  *bysort project: egen basalmean_06 = mean(basalarea_psm_06) if basalarea_psm_06 != .

  *bysort project: egen basalmean_11 = mean(basalarea_psm_11) if basalarea_psm_11 != . 

  *bysort project: egen basalsd_06 = sd(basalarea_psm_06)  if basalarea_psm_06 != .

  *bysort project: egen basalsd_11 = sd(basalarea_psm_11)  if basalarea_psm_11 != .

  *bysort project: egen basalcount_06 = count(basalarea_psm_06) if basalarea_psm_06 != .

  *bysort project: egen basalcount_11 = count(basalarea_psm_11) if basalarea_psm_11 != .

  *gen hibasal06 = basalmean_06 + invttail(basalcount_06 - 1, 0.025)*(basalsd_06/sqrt(basalcount_06))
  
  *gen lobasal06 = basalmean_06 - invttail(basalcount_06 - 1, 0.025)*(basalsd_06/sqrt(basalcount_06))
  
  *gen hibasal11 = basalmean_11 + invttail(basalcount_11 - 1, 0.025)*(basalsd_11/sqrt(basalcount_11))
  
  *gen lobasal11 = basalmean_11 - invttail(basalcount_11 - 1, 0.025)*(basalsd_11/sqrt(basalcount_1))

  *gen year1 = .
  
  *replace year1 = year if year == 06 | year == 11

  *gen basalmean = .


  *replace basalmean = basalmean_06 if year1 == 06
  
  *replace basalmean = basalmean_11 if year1 == 11

  *gen hibasal = .

  *replace hibasal = hibasal06 if year1 == 06
  
  *replace hibasal = hibasal11 if year1 == 11
  
  *gen lobasal = .
  
  *replace lobasal = lobasal06 if year1 == 06
  
  *replace lobasal = lobasal11 if year1 == 11

  label define project 0 "Control Group" 1 "Treatment Group"

  *gen projectstr = "."
  
  *replace projectstr = "Control" if project == 0
  
  *replace projectstr = "Treatment" if project == 1

  graph bar basalmean_06 basalmean_11, by(projectstr)
  
  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/project_non_project.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/project_non_project.pdf", as(pdf) replace
    
  graph twoway (bar basalmean year1) (rcap hibasal lobasal year1), by(projectstr) legend( order(1 "Mean of basal area per sqm" 2 "SE at 95% CI")) xlabel(06 "2006" 11 "2011") xtitle("Year") ytitle("Mean, SE") 

  graph save Graph "$filepath/Forest Plots/Varnitha analysis/graphs/project_non_project_twoway.gph", replace
  
  graph export "$filepath/Forest Plots/Varnitha analysis/graphs/project_non_project_twoway.pdf", as(pdf) replace 
  
log using "$filepath/Forest Plots/Varnitha analysis/log/Collapsed_t-test.log",replace

 ttest basalarea_psm_06 == basalarea_psm_11, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if project == 1 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if project == 0 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if panchid == 102 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if panchid == 103 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if panchid == 104 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if panchid == 105 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if panchid == 106 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if panchid == 107 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if panchid == 108 & _merge == 3, unpaired unequal
 
 ttest basalarea_psm_06 == basalarea_psm_11 if panchid == 110 & _merge == 3, unpaired unequal
 
log close

save basal_figures

use "$filepath/Forest Plots/Varnitha analysis/graphsForest Plot Figures _ TTests/collapsed_basal.dta",clear

keep plotid_new panchid project forestid_11 year basalarea_psm_06 basalarea_psm_11 

save "$filepath/Forest Plots/Varnitha analysis/basal_area_only.dta", replace

use "$filepath/Forest Plots/Varnitha analysis/basal_area_only.dta", clear
keep if year == 11 | year == 611
drop basalarea_psm_06
save "$filepath/Forest Plots/Varnitha analysis/basal_area_only_11.dta", replace


use "$filepath/Forest Plots/Varnitha analysis/basal_area_only.dta", clear
keep if year == 6 | year == 611
drop basalarea_psm_11
save "$filepath/Forest Plots/Varnitha analysis/basal_area_only_06.dta", replace

use "$filepath/Forest Plots/Varnitha analysis/basal_area_only_06.dta", clear

append using "$filepath/Forest Plots/Varnitha analysis/basal_area_only_11.dta"

*gen basalarea_psm = .
*replace basalarea_psm = basalarea_psm_06 if basalarea_psm_06 != .
*replace basalarea_psm = basalarea_psm_11 if basalarea_psm_11 != .
*drop year
*gen year = .
*replace year = 6 if basalarea_psm_06 != .
*replace year = 11 if basalarea_psm_11 != .
*drop basalarea_psm_06 basalarea_psm_11
*gen pair = .
*replace pair = 1 if panchid == 102 | panchid == 108
*replace pair = 2 if panchid == 103 | panchid == 107
*replace pair = 3 if panchid == 104 | panchid == 110
*replace pair = 4 if panchid == 105 | panchid == 106
*save "$filepath/Forest Plots/Varnitha analysis/basal_area_only_pair_wise", replace


// Ttests
use "$filepath/Forest Plots/Varnitha analysis/basal_area_only_pair_wise", clear
  
log using "$filepath/Forest Plots/Varnitha analysis/log/pair_t-test.log",replace

ttest basalarea_psm, by(project) unequal
ttest basalarea_psm if year == 6, by(project) unequal
ttest basalarea_psm if year == 11, by(project) unequal
ttest basalarea_psm, by(year) unequal
ttest basalarea_psm if pair == 1, by(year) unequal
ttest basalarea_psm if pair == 2, by(year) unequal
ttest basalarea_psm if pair == 3, by(year) unequal
ttest basalarea_psm if pair == 4, by(year) unequal
log close

