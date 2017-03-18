function [eps] = machineprecision() %Obliczanie dok?adno?ci maszynowej komputera
    x = 1.0;
    rd = 1.0 + x;
    while (rd > 1.0)
        eps = x;        %Ostatni x spelniaj?cy warunek petli, zapamietujemy w zmiennej eps
        x = x/2;
        rd = 1.0 + x;   %Je?li rd b?dzie równe 1, oznacza to, ?e ostani zapamietany x to dok?adno?? maszynowa
    end
end