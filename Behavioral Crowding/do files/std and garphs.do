use "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\Results1.0.dta" 
twoway (scatter ate depvar1) (rcap loci hici depvar1)
twoway (scatter ate depvar1) (rcap loci hici depvar1), by(proj cattle)
twoway (scatter ate depvar1) (rcap loci hici depvar1), by(proj cattle)
twoway (scatter depvar1 ate) (rcap loci hici depvar1), by(proj cattle)
twoway (scatter depvar1 ate) (rcap loci hici depvar1), by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, horizontal), by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, horizontal), by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, horizontal), xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, horizontal), ylabel(, labels) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, horizontal), ylabel(, labels valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, horizontal), ylabel(, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, lcolor(black) lwidth(thick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, lcolor(black) lwidth(medium) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
label variable depvar1 "Behavioral Crowding"
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(treat)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(treat)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal), ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ylabel(#8, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph",replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph" ,replace
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph"
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",cols(1)
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph", xcommon cols(1)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval")) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval")) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph",replace
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph", xcommon cols(1)
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph", xcommon cols(1) xsize(7) ysize(10)
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph", xcommon cols(1) commonscheme xsize(7) ysize(10)
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",  ycommon xcommon cols(1) commonscheme xsize(7) ysize(10)
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",ycommon xcommon cols(1) iscale(*1.5) commonscheme xsize(7) ysize(10)
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",ycommon xcommon cols(1) iscale(*1.5) commonscheme xsize(7) ysize(10) scale(1)
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",ycommon xcommon cols(1) iscale(*1.5) commonscheme xsize(7) ysize(10) scale(1.1)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(,legend(off)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ytitle(Environmental Behavior) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ytitle(, size(zero)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ytitle(, color(none)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ytitle(, color(yellow)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",replace

twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval")) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph",replace

graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",ycommon xcommon cols(1) iscale(*1.5) commonscheme xsize(7) ysize(10) 


graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",ycommon xcommon cols(1) iscale(*1) commonscheme xsize(7) ysize(10) 
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(off)) legend() by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(off)) legend() xsize(5) ysize(5) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(off)) legend() xsize(7) ysize(5) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(off)) legend() xsize(5) ysize(3) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval")) xsize(5) ysize(5) by(proj)
graph combine "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph" "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph",ycommon xcommon cols(1) iscale(*1) commonscheme xsize(7) ysize(10) 
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\composite1_energy_cattle.gph"
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(off)) legend() xsize(5) ysize(5) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(off)) legend() xsize(5) ysize(5) by(proj)
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(off)) legend() xsize(5) ysize(5) by(proj)
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(off)) legend() xsize(5) ysize(5) by(proj)
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if indi==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(5) ysize(5) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\weak1.gph",replace
twoway (scatter depvar2 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar2, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if indi==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black))  by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(5) ysize(5) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\strong1.gph" ,replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==1, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(5) ysize(5) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\cattle1.gph", replace
twoway (scatter depvar1 ate, mcolor(black) msize(large) msymbol(circle)) (rcap loci hici depvar1, lcolor(black) lwidth(medthick) lpattern(solid) horizontal) if cattle==0, ytitle(, color(white)) ylabel(#4, labels angle(horizontal) valuelabel) xline(0, lwidth(thick) lcolor(black)) by(, legend(on)) legend(order(1 "Average Treatment Effect" 2 "95% Confidence Interval") cols(1)) xsize(5) ysize(5) by(proj)
graph save Graph "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\graphs\energy1.gph", replace


