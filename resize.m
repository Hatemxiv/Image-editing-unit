function y=resize(x)
s=input('please Enter the Scale: ');
y=imresize(x,s);
imshow(y)
end