*Treatment variables meaning
use "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\Data1.0.dta" 
gen parti_proj=1 if parti==1 & project==1
replace parti_proj=0 if parti==0 & project==1 
gen parti_non_proj=1 if parti==1
replace parti_non_proj=0 if project==0
save "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\Data1.0", replace
gen non_parti=.
replace non_parti=1 if parti==0 & project==1
replace non_parti=0 if project==0
use "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\Data1.0.dta" 
*ATE for project vs non-project households
do "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\do files\5Feb2017_cem_proj.do" 
*ATE for participation vs non-participation households
do "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\do files\6Feb2017_cem_parti.do"
*ATE for participation vs non-participation households in project villages
do "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\do files\6Feb2017_cem_parti_project.do"
*ATE for participation vs non-project households
do "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\do files\08 Feb2017_cem_parti_non_project.do" 
*Graphs
use "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\Results2.0.dta"
*All
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==1, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\project.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal)if type==2, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==3, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project.gph", replace 
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-project.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==4, ytitle(, color(white)) ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-non-project.emf", as(emf) replace
*Cattle
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==1 & cattle==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project-cattle.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\project-cattle.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal)if type==2 & cattle==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-cattle.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-cattle.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==3 & cattle==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project-cattle.gph", replace 
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-project-cattle.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==4 & cattle==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project-cattle.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-non-project-cattle.emf", as(emf) replace
*Energy
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==1 & cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project-energy.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\project-energy.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal)if type==2 & cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-energy.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-energy.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==3 & cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project-energy.gph", replace 
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-project-energy.emf", as(emf) replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==4 & cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project-energy.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-non-project-energy.emf", as(emf) replace
*Strong 
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==1 & indi==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project-strong.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\project-strong.emf", as(emf) replace
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal)if type==2 & indi==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-strong.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-strong.emf", as(emf) replace
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==3 & indi==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project-strong.gph", replace 
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-project-strong.emf", as(emf) replace
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==4 & indi==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project-strong.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-non-project-strong.emf", as(emf) replace
*Weak
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==1 & indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project-weak.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\project-weak.emf", as(emf) replace
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal)if type==2 & indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-weak.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-weak.emf", as(emf) replace
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==3 & indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project-weak.gph", replace 
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-project-weak.emf", as(emf) replace
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if type==4 & indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(10) ysize(7) scale(7) by(category,row(1))
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project-weak.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\participation-non-project-weak.emf", as(emf) replace
*Combine
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project.gph" ,ycommon xcommon cols(1) commonscheme iscale(*.75) xsize(3) ysize(7) 
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\combine-all.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\combine-all.emf", as(emf) replace
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project-cattle.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-cattle.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project-cattle.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project-cattle.gph" ,ycommon xcommon cols(1) commonscheme iscale(*.75) xsize(3) ysize(7) 
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\combine-cattle.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\combine-cattle.emf", as(emf) replace
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project-energy.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-energy.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project-energy.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project-energy.gph" ,ycommon xcommon cols(1) commonscheme iscale(*.75) xsize(3) ysize(7) 
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\combine-energy.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\combine-energy.emf", as(emf) replace
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project-weak.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-weak.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project-weak.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project-weak.gph" ,ycommon xcommon cols(1) commonscheme iscale(*.75) xsize(3) ysize(7) 
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\combine-weak.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\combine-weak.emf", as(emf) replace
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\project-strong.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-strong.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-project-strong.gph""C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\participation-non-project-strong.gph" ,ycommon xcommon cols(1) commonscheme  iscale(*.75) xsize(3) ysize(7)  
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\combine-strong.gph", replace
graph export "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\Pictures\combine-strong.emf", as(emf) replace

