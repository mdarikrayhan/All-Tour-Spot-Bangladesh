#include<iostream>
#include<iomanip>
#include<math.h>
#define f(x)(x*x*x)+(x*x)+x+7
using namespace std;
int main()
{
    float a,b,x,fa,fb,f,error=0.001;
    int step=1;
    cout<<setprecision(3)<<fixed;
    cout<<"Enter the value of a: ";
    cin>>a;
    cout<<"Enter the value of b: ";
    cin>>b;
    fa=f(a);
    fb=f(b);
    if (fa*fb>0.0)
    {
        cout<<"Incorrect Initial Guesses." << endl;
        return 0;
    }
    cout<< "                         False Position Method                    " << endl;
    cout<< "******************************************************************" << endl;
    cout<< "Step      "
        << "a               "
        << "b               "
        << "x               "
        << "f(x)" << endl
        << endl;
    do
    {
        fa=f(a);
        fb=f(b);
        x=((fa*b)-(fb*a))/(fa-fb);
        f=f(x);
        cout << step << "\t" << setw(6) << a << "\t" << setw(14) << b << "\t" << setw(14) << x << "\t" << setw(14) << f(x) << endl;
        if(fa*f<0)
        {
            b=x;
        }
        else
        {
            a=x;
        }
        step=step+1;
    } while(fabs(f)>error);
    cout<<endl<<"Root is:"<<x<<endl;
    return 0;
}
