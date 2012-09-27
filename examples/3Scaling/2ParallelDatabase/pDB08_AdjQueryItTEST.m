%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Query adjacency matrix in a database table using an iterator.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo('on'); more('off')                    % Turn off echoing.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DB = DBsetupD4Muser;                        % Create binding to database.

Tadj = DB('TgraphAdj','TgraphAdjT');        % Bind to adjacency matrix table.
TadjDeg = DB('TgraphAdjDeg');               % Bind to degree table.

MaxElem = 1000;                             % Set max elements in iterator.
Nv0 = 100;
v0 = ceil(10000.*rand(Nv0,1));              % Create a starting set of vertices.

myV = 1:numel(v0);
%myV = global_ind(zeros(numel(v0),1,map([Np 1],{},0:Np-1)));    % PARALLEL.

v0str = sprintf('%d,',v0(myV));             % Convert to string list.

TadjIt = Iterator(Tadj,'elements',MaxElem); % Set up query iterator.

A = dblLogi(TadjIt(v0str,:));               % Start query iterator.

AinDeg = Assoc('','','');                   % Initialize Amax.

if nnz(A)
  AinDeg = AinDeg + sum(A,1);               % Compute in degree.
  A = dblLogi(TadjIt());                    % Get next query.
end

%AinDeg = gagg(AinDeg);                     % PARALLEL.
AmaxInDeg = (AinDeg == max(max(Adj(AinDeg))))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% D4M: Dynamic Distributed Dimensional Data Model
% Architect: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% Software Engineer: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% MIT Lincoln Laboratory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) <2010> Massachusetts Institute of Technology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
