/**
* Name: main.cpp
* autor: Krzysztof Bednarski
* wersja 0.1 27/03/2017
*/

#include<string>
#include<iostream>
#include "rejestr.h"

using namespace std;

int main()
{
    while(1)
    {
        int a, b;
        int prze;
        char operacja;
        cout<<"Wprowadz liczbe do rejestru A"<<endl;
        cin>>a;
        cout<<"Wprowadz liczbe do rejestru B"<<endl;
        cin>>b;
        rejestr A(a);
        rejestr B(b);
        cout<<"Wprowadz operator"<<endl;
        cin>>operacja;
        cin.clear();
        cin.sync();
        switch (operacja)
        {
            case '<':
                {
                    cout<<"Wprowadz o ile przesuniete w lewo"<<endl;
                    cin>>prze;
                    A = (A<<prze);
                    B = (B<<prze);
                    cout<<"Zawartosc rejestru A po przesunieciu: "<<A<<endl;
                    cout<<"Zawartosc rejestru B po przesunieciu: "<<B<<endl;
                }
                break;
            case '>':
                {
                    cout<<"Wprowadz o ile przesuniete w prawo"<<endl;
                    cin>>prze;
                    A = (A>>prze);
                    B = (B>>prze);
                    cout<<"Zawartosc rejestru A po przesunieciu: "<<A<<endl;
                    cout<<"Zawartosc rejestru B po przesunieciu: "<<B<<endl;
                }
                break;
            case '+':
                {
                    A+=B;
                    cout<<"A = A + B"<<"\n"<<"A = "<<A<<endl;
                }
                break;
            case '-':
                {
                    cout<<"A - B"<<" = "<<A-B<<endl;
                }
                break;
            case '=':
                {
                    long long int i;
                    i = (A==B);
                    cout<<"Zlaczenie rejestru A i B: "<<i<<endl;
                }
                break;
            case '*':
                {
                    cout<<"A * B = "<<A*B<<endl;
                    cout<<"Podaj stala a"<<endl;
                    cin>>a;
                    cout<<"A * a = "<<A*a<<endl;
                }
                break;
            case '&':
                {
                    A = (A&B);
                    cout<<"A & B = "<<A<<endl;
                }
                break;

            default:
                cout<<"Nie ma takiego operatora"<<endl;
        }
    }
return 0;
}
