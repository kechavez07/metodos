% "fibonacci_search.m"

%Serie de fibonacci implementada a un algoritmo de busqueda binaria
function result = fibonacci_search(arr, x)
    n = length(arr);
    fib = fibonacci(n);

    offset = 0;
    while (fib(end) > 1)
        i = min(offset + fib(end-1), n-1);

        if (arr(i) < x)
            fib = fib(1:end-1);
            offset = i;
        elseif (arr(i) > x)
            fib = fib(1:end-2);
        else
            result = i;
            return;
        end
    end

    if (arr(offset + 1) == x)
        result = offset + 1;
    else
        result = -1;  % Elemento no encontrado
    end
end

