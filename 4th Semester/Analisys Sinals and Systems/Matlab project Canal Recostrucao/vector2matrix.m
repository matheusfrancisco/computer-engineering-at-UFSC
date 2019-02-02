function matrix = vector2matrix(vector);

vector = vector(13:length(vector));  

for i=1:1:320%colunas
    m = (i-1)*480; %linha
    matrix(:,i) = vector(1+m:480+m,1);
end
