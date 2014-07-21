ANTs-Condor
===========

ANTs (Advanced Normalization Tools; http://stnava.github.io/ANTs/) is really the one of the best image registration tools and it takes quite sizable computational resources when it creates unbiased study-specific templates.

This project is to run ANTs(1.9.v4-LINUX)'s buildtemplateparallel.sh on a virtual parallel computing environment called "(HT)Condor" (http://research.cs.wisc.edu/htcondor/).

0. You need to have ANTs, fsl_sub and Condor installed and executable.

1. Download two files "buildtemplateparallel_condor.sh" and "waitForCONDORJobs.sh" into ANT's executable path (i.e. ${ANTSPATH})

2. run "buildtemplateparallel_condor.sh" with the "standard" arguments for "buildtemplateparallel.sh" and "-c 5" for Condor.

(cc) sgKIM, 2014. solleo@gmail.com

This project is under Creative Commons Licenses. 
You are free to share and adapt under certain terms. 
See http://creativecommons.org/licenses/by-nc/2.0/
