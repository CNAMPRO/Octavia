%A=imread('lena.jpg');
%colormap(gray(256));
%A=double(A);
%[row,col]=size(A)

%
%colormap(gray(256));
%imshow(uint8(A(320:400,260:350)));

%for i=1:col
%  A=[A(:,2:col) A(:,1)];
%  imshow(uint8(A(320:400,260:350)));
%  pause(0.001)
%end
clear all
A=imread('lena.jpg');
colormap(gray(256));
A=double(A);
[row,col]=size(A)
subplot(1,2,1)
imshow(uint8(A));
title ( "Original" );
subplot(1,2,2)
%B=A(:,row:-1:1);
%B=A(row:-1:1,:);
%B=A(row:-1:1,:);  
B=230+(A-255).^3/255^2;
%B=A(col:-1:1,:);
imshow(uint8(B));
title ( "Miroir" );
imwrite(uint8(B),'exo11.jpg','jpg');