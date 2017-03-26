function [] = Zadanie3()
    i = 1;
    e = 1;
    A = Matrix_2(1280,1);
    b = Vector_2(1280,1);
    while e>0.0000001
        [x,iter(i)] = Gaussa_Seidela(A,b,1280,e);
        e = e/10;
        r(i) = e;
        i = i+1;
    end
    
    plot(iter, r);
    title('Zaleznosc bledu wyniku od ilosci iteracji')
    xlabel('Ilosc iteracji');
    ylabel('Blad wyniku');
end