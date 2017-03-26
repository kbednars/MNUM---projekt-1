function[A] = Matrix_2(n,pod)
    A = zeros(n, n);
    if pod == 1
        for i = 1:n
            for j = 1:n
                if i == j
                    A(i, j) = 7;
                elseif i == j-1 || i == j+1
                    A(i, j) = 3;
                else
                    A(i, j) = 0;
                end
            end
        end
  
    elseif pod == 2
        for i = 1:n
            for j = 1:n
                if i == j
                    A(i, j) = 1/6;
                else
                    A(i ,j) = 2*(i-j)+2;
                end
            end
        end
        
    elseif pod == 3
        for i = 1:n
            for j = 1:n
                A(i ,j) = 1/(4*(i+j+1));
            end
        end
    end
            
            