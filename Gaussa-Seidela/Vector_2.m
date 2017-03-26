function[b] = Vector_2(n,pod)
b = zeros(n, 1);
 if pod == 1
        for i = 1:n
            b(i, 1) = 2.5 + 0.5*i;
        end

    elseif pod == 2
        for i = 1:n
            b(i, 1) = 2.5 + 0.4*i;
        end
        
    elseif pod == 3
        for i = 1:n
            b(i, 1) = 5/(3*i);
        end
 end