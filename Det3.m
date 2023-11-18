function [D3]=Det3(A)
  %[D3]=Det3([3 2 4;-1 5 6;1 3 8])
  D3=-A(1,2)*Det2(A(2:3,[1,3]))+A(2,2)*Det2(A([1,3],[1,3]))-A(3,2)*Det2(A(1:2,[1,3]));
endfunction
