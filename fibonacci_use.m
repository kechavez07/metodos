% Uso
arr = [16, 4, 21, 5, 1, 3, 90, 103];
x = 90;
index = fibonacci_search(arr, x);

if (index ~= -1)
    fprintf('El elemento %d se encuentra en la posición %d.\n', x, index);
else
    fprintf('El elemento %d no se encuentra en el arreglo.\n', x);
end

