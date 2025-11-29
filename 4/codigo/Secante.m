function [salEva, salEP] = Secante(funcion,a,b,EP)
%Función para realizar método de la secante
%salEva=xn ó raíz de la función
%salEP= Error porcentual de la raíz
%---------------------------------------
%funcion=función a evaluar 
%a: punto x0
%b: punto x1-
%EP: Erorr porcentual deseado
error_actual=100000000; %Le pongo un valor grande deliberadamente, para iniciar el ciclo.
salEP=error_actual;
while error_actual > EP

    salEva = b - (funcion(b) * (b - a)) / (funcion(b) - funcion(a)); % Calculo de xr
    error_actual = abs((salEva - b) / salEva) * 100; %Calculo del error porcentual de esta iteracion
    a = b;
    b = salEva; 
    salEP = error_actual;
end
end