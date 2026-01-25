% Introduction to MATLAB

% This is how you write a comment! This code will not be run, it is simply
% to make your code readable and easy to understand.

%%
% Basic arithmetic operations and variables

% In the following lines of code, we assign numerical values to the
% variables 'a' and 'b' and then do some arithmetic operations on them.

a = 10;
b = 4;
sumResult = a + b;
diffResult = a - b;
prodResult = a * b;
divResult = a / b;

% Why add a semicolon?
% The semicolon suppresses output of a single command. Remove one of the
% semicolons in this section and run the section to see how the output in
% the command window changes!

% What is a section break?
% The '%%' symbol creates a section break => it allows you to split your
% code into different sections, and run them individually. It is just a way to
% organise your code!

% How can we check the values of these variables? => Display them using the 'disp' function!
disp(sumResult);
disp(diffResult);
disp(prodResult);
disp(divResult);
%%

% Displaying output

% We can also display output using the 'fprintf' function

fprintf('Results of arithmetic operations: \n');
fprintf('Sum: %d\nDifference: %d\nProduct: %d\nDivision: %.2f\n', sumResult, diffResult, prodResult, divResult);

% '\n' gives rise to a newline
% '%d' is a placeholder for signed integers
% '%f' is a placeholder for floating-point numbers/decimal numbers, and
% '.b' indicates to print 'b' digits after the decimal point

% What is the default number of digits printed after the decimal point?
% What happens if you dont give any value for 'b'?
% Can you find the placeholders for strings and characters? Try to print a
% line using them!
%%

% Vectors

vectorA = [1, 2, 3, 4, 5];
vectorB = [5, 4, 3, 2, 1];

% Performing elementwise operations
sumVector = vectorA + vectorB;
prodVector = vectorA .* vectorB;

% Displaying the results of array operations
disp('Results of array operations:');
disp('Sum of vectors:');
disp(sumVector);
disp('Elementwise product of vectors:');
disp(prodVector);
%%

% Matrices

matrixA = [1, 2; 3, 4];
matrixB = [2, 0; 0, 2];

% Performing operations on matrices
matrixProduct = matrixA * matrixB;
AinvB = matrixA/matrixB; % returns A * inv(B)
BinvA = matrixB/matrixA; % returns B * inv(A)

% Displaying the results of matrix operations
disp('Matrix product: ');
disp(matrixProduct);
disp('A inverse times B: ');
disp(AinvB);
disp('B inverse times A: ');
disp(BinvA);

% Elementwise operations on the matrices
matrixSum = matrixA + matrixB;
elementwiseProduct = matrixA .* matrixB;
elementwiseQuotient = matrixA ./ matrixB;
elementwiseExponent = matrixA .^ matrixB;

% Displaying the results of the elementwise operations
disp('Results of matrix operations: ');
disp('Sum of matrices: ');
disp(matrixSum);
disp('Elementwise product of matrices: ');
disp(elementwiseProduct);
disp('Elementwise quotient of matrices: ');
disp(elementwiseQuotient);
disp('Elementwise exponent of matrices: ');
disp(elementwiseExponent);
%%

% Can you find out what vectors/matrices the following MATLAB functions return?

array1 = linspace(0,10,11);
array2 = linspace(1,10,4);

matrix1 = ones(3);
matrix2 = ones(1,3);
matrix3 = zeros(3);
matrix4 = eye(3);
matrix5 = eye(3,4);
matrix6 = diag(vectorA);
matrix7 = diag(vectorB, 1);
matrix8 = diag(vectorB, -1);
%%

% Indexing and slicing of arrays and matrices -
% Accessing elements of a matrix
element = matrixA(2, 1); % Accessing the element in the second row, first column
disp('Element from matrixA at (2,1):');
disp(element);

% Accessing diagonal elements of a matrix
disp('Diagonal elements of matrixA:');
disp(diag(matrixA));

% Accessing rows/columns of a matrix
row1 = matrixA(1,:);
col2 = matrixA(:,2);
disp('Row 1 of matrixA:');
disp(row1);
disp('Column 2 of matrixA: ');
disp(col2);

% Similarly for vectors -
disp(vectorA);
elem1 = vectorA(1);
disp('First element of vectorA: ');
disp(elem1);
%%

% Basic loops (for, while etc) 

% FOR loop - execute code a fixed number of times
for i = 1:5
    fprintf('Iteration %d: i = %d\n', i);
end

% WHILE loop - execute code while condition is true
counter = 1;
while counter < 10
    fprintf('Counter = %d\n', counter);
    counter = counter * 2;  % Double the counter each iteration
end

%%
% Common built-in functions

% Trigonometric functions
x = 0:pi/4:pi;  % Create vector from 0 to pi with step pi/4
y1 = sin(x);    % Sine function
y2 = cos(x);    % Cosine function
y3 = tan(x);    % Tangent function (undefined at pi/2)

% Exponential and logarithmic functions
y4 = exp(1);      % Exponential e^x
y5 = log(10);     % Natural logarithm
y6 = log10(100);  % Base-10 logarithm
y7 = log2(8);     % Base-2 logarithm

% Basic math functions
y8 = sqrt(25);    % Square root
y9 = abs(-5);     % Absolute value
y10 = round(4.7);  % Round to nearest integer
y11 = floor(4.7);  % Round down
y12 = ceil(4.3);   % Round up

%%
% Basic plotting

% Create some data for plotting
x = linspace(0, 2*pi, 100);  % 100 points from 0 to 2π
y = sin(x);

% Basic line plot
plot(x, y, 'b-', 'LineWidth', 2);  % Blue solid line
title('Sine Function');
xlabel('x (radians)');
ylabel('Function Values');

%%
% User-defined functions

matrixA = [1, 2; 3, 4];
matrixB = [2, 0; 0, 2];

prod = matrix_product(matrixA, matrixB);
disp(prod);

vectorA = [1, 2, 3, 4, 5];
disp(vectorA);
disp(norm(vectorA));

function y = matrix_product(A,B)
y = A*B;
end

function y = norm(v)
l = length(v);
x = 0;
for i = 1:l
    x = x + v(i)^2;
end
y = sqrt(x);
end