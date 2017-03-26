%e oznacza ? - czyli blad przyblizenia
function[x,iter]=Gaussa_Seidela(A,b,n,e)
L = zeros(n,n);
D = zeros(n,n);
U = zeros(n,n);
x = zeros(n,1);
y = zeros(n,1);%zapisuje postac wektora x, z poprzedniej iteracji 
w = zeros(n,1);

    %Sprawdzenie warunku dostatecznego zbieznosci - silnej dominacji
    %diagonalnej macierzy A
    for i = 1:n
        %Sumujemy wszystkie elementy w wierszu, poza diagonalnym
        sum = 0;
        for j = 1:n    
            if i~=j
                sum = sum + abs(A(i,j));
            end
        end
        %Jesli suma jest wieksza od elementu to warunek nie jest spelniony
        if sum > abs(A(i,i))
            disp('Warunek silnej dominacji diagonalnej nie jest spelniony');
        return
        end
    end

%Stworzenie macierzy trojkatnych oraz diagonalnej
for i = 1:n
    for j = 1:n
        if(i<j)
            U(i,j) = A(i,j);
        elseif(i>j)
            L(i,j) = A(i,j);
        else
            D(i,j) = A(i,j);
        end
    end
end

%Zaczynamy iterowanie
%e - to blad przyblizenia
r = 1;
iter = 1;
while r>e
    y = x; %zapamietujemy wektor x z poprzedniej iteracji
    w = U*x - b;
    for i = 1:n
        x(i) = (-L(i,:)*x- w(i))/D(i,i);
    end
    r = x-y;
    r = norm(r); %liczmy blad z nomrmy euklidesowej, po kazdej iteracji
    iter = iter + 1; %zliczamy ilosc iteracji
end
end