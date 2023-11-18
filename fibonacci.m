%Serie de fibonacci implementada a un algoritmo de busqueda binaria
%Para ejecutar el algoritmo escriba fibonacci_use en la ventana de comandos
%Puede cambiar el item a buscar en la variable 'x' del codigo fibonacci_use
function fib = fibonacci(n)
    fib = zeros(1, n);
    fib(1) = 0;
    fib(2) = 1;

    for i = 3:n
        fib(i) = fib(i-1) + fib(i-2);
    end
end

