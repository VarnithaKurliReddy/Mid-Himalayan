use "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\Data1.0.dta"
*\ nnmatch models for behavior
 log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\fuelch_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch fuelch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store fch_cem2_proj1
nnmatch fuelch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4)
est store fch_cem2_proj2
nnmatch fuelch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store fch_cem2_proj3
nnmatch fuelch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store fch_cem2_proj4
nnmatch fuelch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store fch_cem2_proj5
nnmatch fuelch project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store fch_cem2_proj6
est table fch_cem2_proj1 fch_cem2_proj2 fch_cem2_proj3 fch_cem2_proj4 fch_cem2_proj5 fch_cem2_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close
log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\hhfuel11_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch hhfuel11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store f11_cem2_proj1
nnmatch hhfuel11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store f11_cem2_proj2
nnmatch hhfuel11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store f11_cem2_proj3
nnmatch hhfuel11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store f11_cem2_proj4
nnmatch hhfuel11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store f11_cem2_proj5
nnmatch hhfuel11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store f11_cem2_proj6
est table f11_cem2_proj1 f11_cem2_proj2 f11_cem2_proj3 f11_cem2_proj4 f11_cem2_proj5 f11_cem2_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\fuelzero_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch fuelzero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store f0_cem2_proj1
nnmatch fuelzero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store f0_cem2_proj2
nnmatch fuelzero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store f0_cem2_proj3
nnmatch fuelzero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store f0_cem2_proj4
nnmatch fuelzero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store f0_cem2_proj5
nnmatch fuelzero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store f0_cem2_proj6
est table f0_cem2_proj1 f0_cem2_proj2 f0_cem2_proj3 f0_cem2_proj4 f0_cem2_proj5 f0_cem2_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgrazech_proj.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch cgrazech project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store cch_cem2_proj1
nnmatch cgrazech project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store cch_cem2_proj2
nnmatch cgrazech project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store cch_cem2_proj3
nnmatch cgrazech project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store cch_cem2_proj4
nnmatch cgrazech project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store cch_cem2_proj5
nnmatch cgrazech project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store cch_cem2_proj6
est table cch_cem2_proj1 cch_cem2_proj2 cch_cem2_proj3 cch_cem2_proj4 cch_cem2_proj5 cch_cem2_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgraze11_proj.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch cgraze11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store c11_cem2_proj1
nnmatch cgraze11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store c11_cem2_proj2
nnmatch cgraze11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store c11_cem2_proj3
nnmatch cgraze11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store c11_cem2_proj4
nnmatch cgraze11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store c11_cem2_proj5
nnmatch cgraze11 project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store c11_cem2_proj6
est table c11_cem2_proj1 c11_cem2_proj2 c11_cem2_proj3 c11_cem2_proj4 c11_cem2_proj5 c11_cem2_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgrazezero_proj.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch cgrazezero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store c0_cem2_proj1
nnmatch cgrazezero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store c0_cem2_proj2
nnmatch cgrazezero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store c0_cem2_proj3
nnmatch cgrazezero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store c0_cem2_proj4
nnmatch cgrazezero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store c0_cem2_proj5
nnmatch cgrazezero project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store c0_cem2_proj6
est table c0_cem2_proj1 c0_cem2_proj2 c0_cem2_proj3 c0_cem2_proj4 c0_cem2_proj5 c0_cem2_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\lpgnew_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch lpgnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store lpg_cem2_proj1
nnmatch lpgnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store lpg_cem2_proj2
nnmatch lpgnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store lpg_cem2_proj3
nnmatch lpgnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store lpg_cem2_proj4
nnmatch lpgnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store lpg_cem2_proj5
nnmatch lpgnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store lpg_cem2_proj6
est table lpg_cem2_proj1 lpg_cem2_proj2 lpg_cem2_proj3 lpg_cem2_proj4 lpg_cem2_proj5 lpg_cem2_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close
log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cstallnew_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(project)
nnmatch cstallnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4)
est store cstall_cem2_proj1
nnmatch cstallnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store cstall_cem2_proj2
nnmatch cstallnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==1, exact(pair) m(4) robust(4) 
est store cstall_cem2_proj3
nnmatch cstallnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==2, exact(pair) m(4) robust(4) 
est store cstall_cem2_proj4
nnmatch cstallnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==3, exact(pair) m(4) robust(4) 
est store cstall_cem2_proj5
nnmatch cstallnew project hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1 & reason==4, exact(pair) m(4) robust(4) 
est store cstall_cem2_proj6
est table cstall_cem2_proj1 cstall_cem2_proj2 cstall_cem2_proj3 cstall_cem2_proj4 cstall_cem2_proj5 cstall_cem2_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close
*Table for project
log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\tables_project.log"
estout fch_cem2_proj1, stat( N) cells(" n b se z p ci")
estout f11_cem2_proj1, stat( N) cells(" n b se z p ci")
estout f0_cem2_proj1, stat( N) cells(" n b se z p ci")
estout lpg_cem2_proj1, stat( N) cells(" n b se z p ci")
estout cch_cem2_proj1, stat( N) cells(" n b se z p ci")
estout c11_cem2_proj1, stat( N) cells(" n b se z p ci")
estout c0_cem2_proj1, stat( N) cells(" n b se z p ci")
estout cstall_cem2_proj1, stat( N) cells(" n b se z p ci")
estout fch_cem2_proj2, stat( N) cells(" n b se z p ci")
estout f11_cem2_proj2, stat( N) cells(" n b se z p ci")
estout f0_cem2_proj2, stat( N) cells(" n b se z p ci")
estout lpg_cem2_proj2, stat( N) cells(" n b se z p ci")
estout cch_cem2_proj2, stat( N) cells(" n b se z p ci")
estout c11_cem2_proj2, stat( N) cells(" n b se z p ci")
estout c0_cem2_proj2, stat( N) cells(" n b se z p ci")
estout cstall_cem2_proj2, stat( N) cells(" n b se z p ci")
estout fch_cem2_proj3, stat( N) cells(" n b se z p ci")
estout f11_cem2_proj3, stat( N) cells(" n b se z p ci")
estout f0_cem2_proj3, stat( N) cells(" n b se z p ci")
estout lpg_cem2_proj3, stat( N) cells(" n b se z p ci")
estout cch_cem2_proj3, stat( N) cells(" n b se z p ci")
estout c11_cem2_proj3, stat( N) cells(" n b se z p ci")
estout c0_cem2_proj3, stat( N) cells(" n b se z p ci")
estout cstall_cem2_proj3, stat( N) cells(" n b se z p ci")
estout fch_cem2_proj4, stat( N) cells(" n b se z p ci")
estout f11_cem2_proj4, stat( N) cells(" n b se z p ci")
estout f0_cem2_proj4, stat( N) cells(" n b se z p ci")
estout lpg_cem2_proj4, stat( N) cells(" n b se z p ci")
estout cch_cem2_proj4, stat( N) cells(" n b se z p ci")
estout c11_cem2_proj4, stat( N) cells(" n b se z p ci")
estout c0_cem2_proj4, stat( N) cells(" n b se z p ci")
estout cstall_cem2_proj4, stat( N) cells(" n b se z p ci")
estout fch_cem2_proj5, stat( N) cells(" n b se z p ci")
estout f11_cem2_proj5, stat( N) cells(" n b se z p ci")
estout f0_cem2_proj5, stat( N) cells(" n b se z p ci")
estout lpg_cem2_proj5, stat( N) cells(" n b se z p ci")
estout cch_cem2_proj5, stat( N) cells(" n b se z p ci")
estout c11_cem2_proj5, stat( N) cells(" n b se z p ci")
estout c0_cem2_proj5, stat( N) cells(" n b se z p ci")
estout cstall_cem2_proj5, stat( N) cells(" n b se z p ci")
estout fch_cem2_proj6, stat( N) cells(" n b se z p ci")
estout f11_cem2_proj6, stat( N) cells(" n b se z p ci")
estout f0_cem2_proj6, stat( N) cells(" n b se z p ci")
estout lpg_cem2_proj6, stat( N) cells(" n b se z p ci")
estout cch_cem2_proj6, stat( N) cells(" n b se z p ci")
estout c11_cem2_proj6, stat( N) cells(" n b se z p ci")
estout c0_cem2_proj6, stat( N) cells(" n b se z p ci")
estout cstall_cem2_proj6, stat( N) cells(" n b se z p ci")
log close



