ANTs-Condor
===========

ANTs (Advanced Normalization Tools; http://stnava.github.io/ANTs/) is really the one of the most sophisticated image registration tools. Since its unbiased template creation takes quite sizable computational resources, parallelization can reduce the total computation time greatly.

While the parallelization implemented in ANTS's script "buildtemplateparallel.sh" (v. 0.0.14 test) supports SGE, PBS and Apple XGrid, it does not support a virtual parallel computing environment called "(HT)Condor" (http://research.cs.wisc.edu/htcondor/).

This project enables parallelization of ANTs(1.9.v4-LINUX)'s template building using Condor. To run it:

0. You need to have ANTs, and Condor executable.
1. Since it submit jobs via `fsl_sub`, you also need to have fsl_sub executable and set environment variable as: `export FSLPARALLEL=CONDOR`
2. Download two files `buildtemplateparallel_condor.sh` and `waitForCONDORJobs.sh` into ANT's executable path (i.e. `${ANTSPATH}`)
3. run `buildtemplateparallel_condor.sh` with the standard arguments used in the original script "buildtemplateparallel.sh" and the option `-c 5` for Condor.

(cc) sgKIM, 2014. solleo@gmail.com
