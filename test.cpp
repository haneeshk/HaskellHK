#include<iostream>
#include<cmath>




int main()
{
double x;
for(int i=1;i<15;i++){
x=pow(10,(double)i);
printf("i=%d   ans: %f\n",i,exp(x));
}
return 0;
}
