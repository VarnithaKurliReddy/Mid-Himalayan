use "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\Data1.0.dta"
*\ nnmatch models for behavior – parti_proj (within project)
log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\fuelch_parti_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch fuelch parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store fch_cem2_parti_proj1
nnmatch fuelch parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store fch_cem2_parti_proj2
nnmatch fuelch parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==1, exact(pair) m(4) robust(4) 
est store fch_cem2_parti_proj3
nnmatch fuelch parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==2, exact(pair) m(4) robust(4) 
est store fch_cem2_parti_proj4
nnmatch fuelch parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==3, exact(pair) m(4) robust(4) 
est store fch_cem2_parti_proj5
nnmatch fuelch parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==4, exact(pair) m(4) robust(4) 
est store fch_cem2_parti_proj6
est table fch_cem2_parti_proj1 fch_cem2_parti_proj2 fch_cem2_parti_proj3 fch_cem2_parti_proj4 fch_cem2_parti_proj5 fch_cem2_parti_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\hhfuel11_parti_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch hhfuel11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store f11_cem2_parti_proj1
nnmatch hhfuel11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store f11_cem2_parti_proj2
nnmatch hhfuel11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==1, exact(pair) m(4) robust(4) 
est store f11_cem2_parti_proj3
nnmatch hhfuel11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==2, exact(pair) m(4) robust(4) 
est store f11_cem2_parti_proj4
nnmatch hhfuel11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==3, exact(pair) m(4) robust(4) 
est store f11_cem2_parti_proj5
nnmatch hhfuel11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==4, exact(pair) m(4) robust(4) 
est store f11_cem2_parti_proj6
est table f11_cem2_parti_proj1 f11_cem2_parti_proj2 f11_cem2_parti_proj3 f11_cem2_parti_proj4 f11_cem2_parti_proj5 f11_cem2_parti_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\fuelzero_parti_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch fuelzero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store f0_cem2_parti_proj1
nnmatch fuelzero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store f0_cem2_parti_proj2
nnmatch fuelzero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==1, exact(pair) m(4) robust(4) 
est store f0_cem2_parti_proj3
nnmatch fuelzero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==2, exact(pair) m(4) robust(4) 
est store f0_cem2_parti_proj4
nnmatch fuelzero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==3, exact(pair) m(4) robust(4) 
est store f0_cem2_parti_proj5
nnmatch fuelzero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==4, exact(pair) m(4) robust(4) 
est store f0_cem2_parti_proj6
est table f0_cem2_parti_proj1 f0_cem2_parti_proj2 f0_cem2_parti_proj3 f0_cem2_parti_proj4 f0_cem2_parti_proj5 f0_cem2_parti_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgrazech_parti_proj.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch cgrazech parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store cch_cem2_parti_proj1
nnmatch cgrazech parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store cch_cem2_parti_proj2
nnmatch cgrazech parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==1, exact(pair) m(4) robust(4) 
est store cch_cem2_parti_proj3
nnmatch cgrazech parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==2, exact(pair) m(4) robust(4) 
est store cch_cem2_parti_proj4
nnmatch cgrazech parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==3, exact(pair) m(4) robust(4) 
est store cch_cem2_parti_proj5
nnmatch cgrazech parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==4, exact(pair) m(4) robust(4) 
est store cch_cem2_parti_proj6
est table cch_cem2_parti_proj1 cch_cem2_parti_proj2 cch_cem2_parti_proj3 cch_cem2_parti_proj4 cch_cem2_parti_proj5 cch_cem2_parti_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgraze11_parti_proj.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch cgraze11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store c11_cem2_parti_proj1
nnmatch cgraze11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store c11_cem2_parti_proj2
nnmatch cgraze11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==1, exact(pair) m(4) robust(4) 
est store c11_cem2_parti_proj3
nnmatch cgraze11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==2, exact(pair) m(4) robust(4) 
est store c11_cem2_parti_proj4
nnmatch cgraze11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==3, exact(pair) m(4) robust(4) 
est store c11_cem2_parti_proj5
nnmatch cgraze11 parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==4, exact(pair) m(4) robust(4) 
est store c11_cem2_parti_proj6
est table c11_cem2_parti_proj1 c11_cem2_parti_proj2 c11_cem2_parti_proj3 c11_cem2_parti_proj4 c11_cem2_parti_proj5 c11_cem2_parti_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cgrazezero_parti_proj.log"
*\ cem2
cem reason cgrazecut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch cgrazezero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store c0_cem2_parti_proj1
nnmatch cgrazezero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store c0_cem2_parti_proj2
nnmatch cgrazezero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==1, exact(pair) m(4) robust(4) 
est store c0_cem2_parti_proj3
nnmatch cgrazezero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==2, exact(pair) m(4) robust(4) 
est store c0_cem2_parti_proj4
nnmatch cgrazezero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==3, exact(pair) m(4) robust(4) 
est store c0_cem2_parti_proj5
nnmatch cgrazezero parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==4, exact(pair) m(4) robust(4) 
est store c0_cem2_parti_proj6
est table c0_cem2_parti_proj1 c0_cem2_parti_proj2 c0_cem2_parti_proj3 c0_cem2_parti_proj4 c0_cem2_parti_proj5 c0_cem2_parti_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close

log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\lpgnew_parti_proj.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch lpgnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store lpg_cem2_parti_proj1
nnmatch lpgnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store lpg_cem2_parti_proj2
nnmatch lpgnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==1, exact(pair) m(4) robust(4) 
est store lpg_cem2_parti_proj3
nnmatch lpgnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==2, exact(pair) m(4) robust(4) 
est store lpg_cem2_parti_proj4
nnmatch lpgnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==3, exact(pair) m(4) robust(4) 
est store lpg_cem2_parti_proj5
nnmatch lpgnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==4, exact(pair) m(4) robust(4) 
est store lpg_cem2_parti_proj6
est table lpg_cem2_parti_proj1 lpg_cem2_parti_proj2 lpg_cem2_parti_proj3 lpg_cem2_parti_proj4 lpg_cem2_parti_proj5 lpg_cem2_parti_proj6, star(.01 .05 .10) stats(N) b(%9.3f)
log close



log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\cstallnew_parti_project.log"
*\ cem2
cem reason fuelcut hhnum(3.5) newroom(.5) cgraze06(.5) newspaper06(4.5), tr(parti)
nnmatch cstallnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair) m(4) robust(4) 
est store cstall_cem2_parti_proj1
nnmatch cstallnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1, exact(pair reason) m(4) robust(4) 
est store cstall_cem2_parti_proj2
nnmatch cstallnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==1, exact(pair) m(4) robust(4) 
est store cstall_cem2_parti_proj3
nnmatch cstallnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==2, exact(pair) m(4) robust(4) 
est store cstall_cem2_parti_proj4
nnmatch cstallnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==3, exact(pair) m(4) robust(4) 
est store cstall_cem2_parti_proj5
nnmatch cstallnew parti_proj hhfuel06 hhnum06 newroom06 sc months06 cgraze06 newspaper06 irrigate06 lpg06 if cem_matched==1& reason==4, exact(pair) m(4) robust(4) 
est store cstall_cem2_parti_proj6
log close


*\TABLES 
log using "C:\Users\31086\Dropbox\MHWDP\Behavioral crowding\Varnitha-Analysis\tables_parti_project.log"
estout fch_cem2_parti_proj1, stat( N) cells(" n b se z p ci")
estout f11_cem2_parti_proj1, stat( N) cells(" n b se z p ci")
estout f0_cem2_parti_proj1, stat( N) cells(" n b se z p ci")
estout lpg_cem2_parti_proj1, stat( N) cells(" n b se z p ci")
estout cch_cem2_parti_proj1, stat( N) cells(" n b se z p ci")
estout c11_cem2_parti_proj1, stat( N) cells(" n b se z p ci")
estout c0_cem2_parti_proj1, stat( N) cells(" n b se z p ci")
estout cstall_cem2_parti_proj1, stat( N) cells(" n b se z p ci")
estout fch_cem2_parti_proj2, stat( N) cells(" n b se z p ci")
estout f11_cem2_parti_proj2, stat( N) cells(" n b se z p ci")
estout f0_cem2_parti_proj2, stat( N) cells(" n b se z p ci")
estout lpg_cem2_parti_proj2, stat( N) cells(" n b se z p ci")
estout cch_cem2_parti_proj2, stat( N) cells(" n b se z p ci")
estout c11_cem2_parti_proj2, stat( N) cells(" n b se z p ci")
estout c0_cem2_parti_proj2, stat( N) cells(" n b se z p ci")
estout cstall_cem2_parti_proj2, stat( N) cells(" n b se z p ci")
estout fch_cem2_parti_proj3, stat( N) cells(" n b se z p ci")
estout f11_cem2_parti_proj3, stat( N) cells(" n b se z p ci")
estout f0_cem2_parti_proj3, stat( N) cells(" n b se z p ci")
estout lpg_cem2_parti_proj3, stat( N) cells(" n b se z p ci")
estout cch_cem2_parti_proj3, stat( N) cells(" n b se z p ci")
estout c11_cem2_parti_proj3, stat( N) cells(" n b se z p ci")
estout c0_cem2_parti_proj3, stat( N) cells(" n b se z p ci")
estout cstall_cem2_parti_proj3, stat( N) cells(" n b se z p ci")
estout fch_cem2_parti_proj4, stat( N) cells(" n b se z p ci")
estout f11_cem2_parti_proj4, stat( N) cells(" n b se z p ci")
estout f0_cem2_parti_proj4, stat( N) cells(" n b se z p ci")
estout lpg_cem2_parti_proj4, stat( N) cells(" n b se z p ci")
estout cch_cem2_parti_proj4, stat( N) cells(" n b se z p ci")
estout c11_cem2_parti_proj4, stat( N) cells(" n b se z p ci")
estout c0_cem2_parti_proj4, stat( N) cells(" n b se z p ci")
estout cstall_cem2_parti_proj4, stat( N) cells(" n b se z p ci")
estout fch_cem2_parti_proj5, stat( N) cells(" n b se z p ci")
estout f11_cem2_parti_proj5, stat( N) cells(" n b se z p ci")
estout f0_cem2_parti_proj5, stat( N) cells(" n b se z p ci")
estout lpg_cem2_parti_proj5, stat( N) cells(" n b se z p ci")
estout cch_cem2_parti_proj5, stat( N) cells(" n b se z p ci")
estout c11_cem2_parti_proj5, stat( N) cells(" n b se z p ci")
estout c0_cem2_parti_proj5, stat( N) cells(" n b se z p ci")
estout cstall_cem2_parti_proj5, stat( N) cells(" n b se z p ci")
estout fch_cem2_parti_proj6, stat( N) cells(" n b se z p ci")
estout f11_cem2_parti_proj6, stat( N) cells(" n b se z p ci")
estout f0_cem2_parti_proj6, stat( N) cells(" n b se z p ci")
estout lpg_cem2_parti_proj6, stat( N) cells(" n b se z p ci")
estout cch_cem2_parti_proj6, stat( N) cells(" n b se z p ci")
estout c11_cem2_parti_proj6, stat( N) cells(" n b se z p ci")
estout c0_cem2_parti_proj6, stat( N) cells(" n b se z p ci")
estout cstall_cem2_parti_proj6, stat( N) cells(" n b se z p ci")
log close 
