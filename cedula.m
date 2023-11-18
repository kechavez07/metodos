function esValida = validarCedula(cedula)
    % Verificar la longitud del número de cédula
    if length(cedula) ~= 10
        disp('La cédula debe tener 10 dígitos.');
        esValida = false;
        return;
    end

    % Obtener los primeros 9 dígitos
    digitos = str2double(cedula(1:9));

    % Obtener el último dígito (dígito verificador)
    verificador = str2double(cedula(10));

    % Calcular la suma de verificación
    suma = 0;
    for i = 1:9
        suma = suma + mod(digitos(i) * 2^(9 - i), 10);
    end

    % Calcular el dígito verificador esperado
    verificadorEsperado = mod(10 - mod(suma, 10), 10);

    % Verificar si el dígito verificador coincide
    if verificador == verificadorEsperado
        disp('La cédula es válida.');
        esValida = true;
    else
        disp('La cédula no es válida.');
        esValida = false;
    end
end
