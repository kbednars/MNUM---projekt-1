function[x] = metodaLU(A, b, n)
tic %rozpoczecie pomiaru czasu
A_P = zeros(n,n); %macierz pomocnicza
x = zeros(n,1); %wektor niewiadomych
y = zeros(n,1); %wektor potrzebny do rozwiazywania rownan
L = zeros(n,n); 
U = zeros(n,n);

%Macierz w ktorej zapisujemy poczatkowe wartosci macierzy A
A_P = A;

%Przeprowadzamy eliminajce Gaussa macierzy A, ale w komorce, ktora
%zerujemy, zapamietujemy zmienna l
for j = 1:n 
    for i = j+1:n
        l = A_P(i,j)/A_P(j,j);
        A_P(i,:) = A_P(i,:) - l * A_P(j,:);
        L(i,j) = l;
    end
end

%Przeksztalcona macierz A rozkladamy na mierze L i U
for j = 1:n 
    for i = 1:n
        if i==j 
            L(i,j) = 1;
            U(i,j) = A_P(i,j);
        elseif i>j
            U(i,j) =  0;
        elseif i<j
            U(i,j) = A_P(i,j);
        end
    end
end
       

%Rozwiazujemy dwa równania
%Najpierw rownanie L*y=b
k = 1;
while k<=n
    y(k) = b(k); %pierwsza komorke mozemy przepisac
    l=k-1;
    while l>=1
        y(k) = y(k) - (L(k,l)*y(l));
        l = l-1;
    end
    k = k+1;
end

%Teraz rownanie U*x=y
k = n;
while k>=1
    x(k) = y(k); %pierwsza komorke mozemy przepisac
    l=k+1;
    while l<=n
        x(k) = x(k) - (U(k,l)*x(l));
        l = l+1;
    end
    x(k) = x(k)/U(k,k);
    k = k-1;
end

%r jest residuum
r = b - A*x;
    
%Po obliczeniu normy zwracamy ja jako blad obliczenia
r = norm(r);

toc
end