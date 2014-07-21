ANTS-condor
===========

This project is to run ANTS(1.9.v4-LINUX)'s buildtemplateparallel.sh on Condor.

0. You need to have ANTS, fsl_sub and Condor installed on your system.

1. Download two files "buildtemplateparallel_condor.sh" and 
"waitForCONDORJobs.sh" into ANT's executable path (i.e. ${ANTSPATH})

2. run "buildtemplateparallel_condor.sh" with all standard arguments 
and "-c 5" for Condor.

(cc) sgKIM, 2014. solleo@gmail.com

This project is under Creative Commons Licenses. 
You are free to share and adapt under certain terms. 
See http://creativecommons.org/licenses/by-nc/2.0/
