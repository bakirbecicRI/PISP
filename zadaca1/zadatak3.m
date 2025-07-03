function A = z3(x)
n = length(x);
A = zeros(n, 3*n);

A(end:-1:1, 1:n) = diag(x);
A(1:n, 2*n+1:3*n) = diag(fliplr(x));
A(:, n+1:2*n) = diag(ones(1, n)) + diag(2*ones(1, n-1), 1) + diag(2*ones(1, n-1), -1);

A(1:n, 2*n+1) = x(end:-1:1);
A(1:n, 3*n) = x(end:-1:1);

A(1, 1:n) = x;
A(n, 1:n) = x;
A(1:n, n+1) = x;
A(1, n+1:2*n) = x;
A(n, n+1:2*n) = x(end:-1:1);
A(1:n, 2*n) = x(end:-1:1);

maska = ones(3);
maska(2,2) = 0;
sume = conv2(A, maska, 'same');

[rows, cols] = size(A);
for i = 1:rows
    for j = 1:cols
        fprintf('A(%d,%d)=%d okruzen sumom %d\n', i, j, A(i,j), sume(i,j));
    end
end

djelilac_maska = (A ~= 0) & mod(sume, A) == 0;
D = A(djelilac_maska);

figure;
subplot(1,2,1);
imagesc(A);
colormap(gca, hot);
colorbar;
title('Matrica A');

subplot(1,2,2);
plot(D, '-o');
title('Djelilac suma susjeda');
xlabel('Indeks');
ylabel('Vrijednost');
end
