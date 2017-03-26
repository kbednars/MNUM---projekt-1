function [r,t] = Zadanie2(pod)
    n = 10;
    i = 1;
    roz(i) = n;
    t = 1;
    while(t<300)
        [A,b] = Generate_2(n,pod);
        [r(i),t] = metodaLU(A,b,n);
        i = i+1;
        n
        if n<1280
            n = n*2;
        else
            n = n+640;
        end
        roz(i) = n;
        r
        t
    end
    plot(roz(1:i-1), r);
        title('Zaleznosc bledu wyniku od ilosci rownan')
        xlabel('Ilosc równan');
        ylabel('Blad wyniku');
end