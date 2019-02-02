function plot_figura(vector);
%imagem em forma de vetor


vector = 256*vector/max(abs(vector));
matrix = vector2matrix(vector);

figure
imshow(uint8(matrix))
