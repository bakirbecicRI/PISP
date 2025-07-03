while true
    A = input('Unesite matricu A: ');
    [n, m] = size(A);

    if n ~= m || n < 3
        disp('Matrica mora biti kvadratna i dimenzija >= 3.');
        continue;
    end

    n = length(A);
    A_lr = fliplr(A);

    sume = [sum(A,1) sum(A,2)' sum(diag(A)) sum(diag(A_lr))];
    if ~length(find(sume ~= sume(1)))
        disp('DA');

        prod_val = prod(diag(A,1)) * prod(diag(flipud(A), -1));
        D = prod_val;

        d1 = diag(A);
        d2 = diag(flipud(A));
        if mod(n,2) == 1
            d2(ceil(n/2)) = [];
        end
        suma_parnih = sum([d1; d2] .* (mod([d1; d2],2) == 0));

        B = suma_parnih;

        broj_rubnih=0;
        for i=1:n
            for j=[1 n]
                if A(i,j)<8 && mod(i+j,2) ~= 0
                    broj_rubnih =broj_rubnih+1;
                end
            end
        end

        for i=[1 n]
            for j=2:(n-1)
                if A(i,j)<8 && mod(i+j,2) ~= 0
                    broj_rubnih=broj_rubnih+1;
                end
            end
        end

        C = broj_rubnih;

        V = [D B C];
        disp('Vektor V:');
        disp(V);
    else
        disp('NE');
        B=round(rand(n)*6+2);
        a2 = diag(diag(A));
        b2 = diag(diag(B));
        a3 = flipud(diag(diag(flipud(A))));
        b3 = flipud(diag(diag(flipud(B))));
        B = B - b2 - b3 + a2 + a3;
        disp('Matrica B: ');
        disp(B);
    end
end
