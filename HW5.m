A = [7 1 7 7 4]; 
B = [1 2 3 7 0 4 4 0];
 
% Set intersection of two arrays
[C, ia, ib] = intersect(A,B)	
% C =
%    1     4     7
%
% ia =
%     2   % where "1" appeared in A first
%     5   % where "4" appeared in A first
%     1   % where "7" appeared in A first
%
% ib =
%    1    % where "1" appeared in B first
%    6    % where "4" appeared in B first
%    4    % where "7" appeared in B first 
 
% Array elements that are members of set array
[TF, idx] = ismember(B, A)
% TF =
%    1     0     0     1     0     1     1     0
%
% idx =
%     2     0     0     1     0     5     5     0	
 
% Determine whether set elements are in sorted order
TF = issorted(A)
% TF =
%          0	
TF = issorted([1 2 3 4 5])
% TF =
%          1
 
% Set difference of two arrays
[D, idx] = setdiff(B, A)
%
% D =
%     0     2     3   % values in B that are not in A
%
% idx =
%     5   % indices of elements in B that are not in A
%     2
%     3	
 
% Set exclusive OR of two arrays
% Find the values of A and B that are not in their intersection.
[D, ia, ib] = setxor(A, B)
% 
% C =
%     0     2     3
%
% ia =
%   Empty matrix: 0-by-1
%
% ib =
%     5
%     2
%     3	
 
% Set union of two arrays
[C, ia, ib] = union(A, B)
% C =
%     0     1     2     3     4     7
%
% ia =
%     2
%     5
%     1
%
% ib =
%     5
%     2
%     3	
 
% Unique values in array
[C, ia, ic] = unique(A)
% C = A(ia) and A = C(ic)