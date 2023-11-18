function [D5]=Det5(A)
  %[D5]=Det5([3 2 4 6 9;-1 5 6 8 9;1 3 8 7 9; 7 8 4 5 9; 1 2 3 7 6])
  D5=A(1,1)*Det4(A(2:5, 2:5))-A(1,2)*Det4(A(2:5,[1,3,4,5]))+A(1,3)*Det4(A(2:5,[1,2,4,5]))-A(1,4)*Det4(A(2:5,[1,2,3,5]))+A(1,5)*Det4(A(2:5,1:4));
endfunction
