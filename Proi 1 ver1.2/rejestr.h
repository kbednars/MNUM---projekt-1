/**
* Name: rejestr.h
* autor: Krzysztof Bednarski
* wersja 0.1 27/03/2017
*/

#ifndef REJESTR_H_INCLUDED
#define REJESTR_H_INCLUDED

#include<iostream>
#include<math.h>
#include <cstdlib>

class rejestr
{
private:
    static const int n=8;
    int i;
public:
    rejestr(int i);
    friend std::ostream & operator <<(std::ostream & wyj, const rejestr &zaw);
    rejestr operator <<(int a);
    rejestr operator >>(int a);
    int operator +(const rejestr &P);
    int operator -(const rejestr &P);
    long long int operator *(const rejestr &P);
    long long int operator *(int a);
    long long int operator ==(const rejestr &P);
    rejestr operator =(const rejestr &P);
    rejestr operator +=(const rejestr &P);
    rejestr operator -=(const rejestr &P);
    rejestr operator *=(const rejestr &P);
    rejestr operator &(const rejestr &P);
};

#endif // REJESTR_H_INCLUDED
