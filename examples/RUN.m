machines = {'f-2-1' 'f-2-2' 'f-2-3' 'f-2-4' 'f-2-5' 'f-2-6' 'f-2-7' 'f-2-8' 'f-2-9' 'f-2-10' 'f-2-11' 'f-2-12' 'f-2-13' 'f-2-14' 'f-2-15'};
%eval(pRUN('pPrep',8,machines));
eval(pRUN('pBenchmarkTest1',15,machines));

