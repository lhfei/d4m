nl = char(10); cr = char(13);


QueryRequestGetTrackNamesJSON = ['{"name":"QueryRequest",' ...
  '"rowSeparator":"\n","columnSeparator":",",' ...
  '"Nrows":2,"Ncolumns":2,"Nentries": 3,' ...
  '"CSVstring":",Col1\nQueryName,GetTrackNames\nMinLength,3"}'];

%QueryResponseGetTrackNamesJSON = ['{"name":"QueryResponse",' ...
%  '"rowSeparator":"\n","columnSeparator":",",' ...
%  '"Nrows": 9,"Ncolumns": 2,"Nentries": 17,' ...
%  '"CSVstring":",Col1\nNE_PERSON/raja bahadur,137\nNE_PERSON_GENERIC/albert david,238\nNE_PERSON_GENERIC/cynthia simpson,110\nNE_PERSON_GENERIC/dawn mills,277\nNE_PERSON_GENERIC/george williamson,261\nNE_PERSON_GENERIC/john fowler,272\nNE_PERSON_GENERIC/samuel a. ramirez,106\nNE_PERSON_GENERIC/thomas cook,116"}'];

QueryRequestMHtrackJSON = ['{"name":"QueryRequest",' ...
  '"rowSeparator":"\n","columnSeparator":",",' ...
  '"Nrows":2,"Ncolumns":2,"Nentries":3,' ...
  '"CSVstring":",Col1\nQueryName,MHtrack\nEntityName,NE_PERSON_GENERIC/robert maxwell"}'];

%QueryResponseMHtrackJSON = ['{"name":"QueryResponse",' ...
%  '"rowSeparator":"\n","columnSeparator":",",' ...
%  '"Nrows":4,"Ncolumns":3,"Nentries":11,' ...
%  '"CSVstring":",NE_LOCATION/costa rica,NE_LOCATION/london\nTIME/199405080000,-630-715i,-630+969i\nTIME/199607020000,-377-715i,-377+969i\nTIME/199611160000,710-715i,710+992i"}'];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% D4M: Dynamic Distributed Dimensional Data Model
% Architect: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% Software Engineer: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% MIT Lincoln Laboratory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) <2010> Massachusetts Institute of Technology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

