/**
* Name: rejestr.h
* autor: Krzysztof Bednarski
* wersja 0.1 27/03/2017
*/

#include "rejestr.h"

using namespace std;

rejestr:: rejestr(int i)//konstruktor
{
    while (i>(pow(10, this->n)-1))
    {
        i = i - pow(10, this->n);
    }
    this->i = i;
}


ostream & operator<<(ostream & wyj,const rejestr &zaw)//przeciazenie strumienia wyjsciowego
{
    return wyj<<zaw.i<<endl;
};

rejestr rejestr:: operator <<(int a)//operator realizuje przesuniecie bitowe w lewo
{
    long long int i = this->i*(pow(10,(a)));

    if (a%2==0)
    {
        return rejestr (i+1);
    }
    else
    {
        return rejestr (i);
    }
}

rejestr rejestr:: operator >>(int a)//operator realizuje przesuniecie bitowe w prawo
{
    return rejestr(this->i*(pow(10,(-a))));
}

int rejestr:: operator +(const rejestr &P)//operator realizuje zadanie sumatora
{

    return this->i + P.i;
}

int rejestr:: operator -(const rejestr &P)//operator realizuje odejmowanie zawartosci rejestrow
{
    return this->i-P.i;
}

long long int rejestr:: operator *(const rejestr &P)//operator odpowiedzialny za mno¿enie wartoœci rejestrów
{
    return this->i*P.i;
}

long long int rejestr:: operator *(int a)
{
    return this->i*a;
}

long long int rejestr:: operator ==(const rejestr &P)//operator odpowiedzialny za laczenie dwoch rejestrow
{
    return (this->i*pow(10,this->n))+P.i;
}

rejestr rejestr:: operator =(const rejestr &P)//przypisuje nowa wartosc do zmiennej i obiektu rejestr
{
    this->i = P.i;
    return *this;
}

rejestr rejestr:: operator +=(const rejestr &P)//dodaje do wartosci i inna wartosc, a nastepnie zapisuje wynik w tej zmiennej i
{
    this->i = this->i + P.i;
    return *this;
}

rejestr rejestr:: operator -=(const rejestr &P)//odejmuje od wartosci i inna wartosc, a nastepnie zapisuje wynik w tej zmiennej i
{
    this->i = this->i - P.i;
    return *this;
}

rejestr rejestr:: operator *=(const rejestr &P)//mnozy wartosc i z inna wartosc, a nastepnie zapisuje wynik w tej zmiennej i
{
    this->i = this->i * P.i;
    return *this;
}

rejestr rejestr:: operator &(const rejestr &P)//w miejsca zer pierwszej liczby wpisuje, wartości cyfr na tych miejscach
{
    int tmp1 = this->i;
    int tmp2 = P.i;
    int wart1, wart2;
    int pot;
    for (int i=8; i>0; i--)
    {
        if (i%2==0)
        {
            pot = (pow(10,i))+1;
        }
        else
        {
            pot = (pow(10,i));
        }
        wart2 = tmp2/pot;
        if(tmp1<pot&&pot>10)
        {
            this->i = this->i + wart2*pot;
        }
        else if(tmp1==0)
        {
            this->i = wart2;
        }
        tmp1 = tmp1 - wart1*pot;
        tmp2 = tmp2 - wart2*pot;
    }
    if(this->i>(pow(10/(n/2))+1) && this->i>0)
    {
        this->
    }
    return *this;
}
