function [eps] = machineprecision() %Obliczanie dokladnosci maszynowej komputera
    x = 1.0;
    rd = 1.0 + x;
    while (rd > 1.0)
        eps = x;        %Ostatni x spelniajacy warunek petli, zapamietujemy w zmiennej eps
        x = x/2;
        rd = 1.0 + x;   %Jesli rd bedzie równe 1, oznacza to, ze ostani zapamietany x to dokladnosc maszynowa
    end
end