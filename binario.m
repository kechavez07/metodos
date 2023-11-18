% Convierte un número binario a decimal
bi = [1 0 1 0 1 0]; % Corregido: usa corchetes para definir un vector
de = 0;

for i = 1:length(bi)
    de = de + bi(i) * 2^(length(bi)-i);
end

disp(['El número binario ', num2str(bi), ' en decimal es: ', num2str(de)]);

