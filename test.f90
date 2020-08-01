PROGRAM test
Character (32):: N_char
Integer::b,i, N=1
Real, parameter :: PI=3.14
Real :: x=1.0, expx=0.0
Call Get_Command _Argument(1, N_char)
Read(N_Char,*)N
do i=0,N
	ans=ans+(x**i)/Gamma(Real(i+1))
end do

print*, ans

END Program test
