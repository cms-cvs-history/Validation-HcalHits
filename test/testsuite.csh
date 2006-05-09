#!/bin/csh

    eval `scramv1 ru -csh`
    rm *.log *.xml
    cmsRun --parameter-set run_HB.cfg >& outputHB.log
    cmsRun --parameter-set run_HE.cfg >& outputHE.log
    cmsRun --parameter-set run_HF.cfg >& outputHF.log

    root -b -q plot_HB.C
    root -b -q plot_HE.C
    root -b -q plot_HF.C

end

