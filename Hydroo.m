clc
clear
fprintf('Greatings sir, how are you? my name is Hydroliuim\n');
fprintf('A simple Image Editor and processor\n');
fprintf('Please select the image \n');

[file,path] = uigetfile('*.*','select an image');
Original = strcat(path,file);
Or=imread(Original);
format=imfinfo(Original).Format;
Or1=Or;
Firststep=5;


again='y';

    while again=='y'
    disp(' 1-I can rotate, 2-make your image square, 3-add boarders, 4-give you effects,');
    disp('5-crop, 6- resize, 7- increase brightnes, 8- mirror. Choose! -From one to Eight respectively');
    operator=input(' Enter your desired action number: ');
    y1=Or;
    switch operator 
        case 1 
            y=rotate(Or);
            y= saveE(Or,y);
        case 2 
            y=square(Or);
            imshow(y);
            y= saveE(Or,y);
        case 3
            y=boarder(Or);
            y= saveE(Or,y);
        case 4
            y=effect(Or);
            imshow(y);
            y= saveE(Or,y);
        case 5
            y=crop(Or);
            y= saveE(Or,y);
        case 6
            y=resize(Or);
            y= saveE(Or,y);
        case 7
            q1= input ('please enter the value uou want ' );
            y=increaseBrightnessBy(Or, q1 );
            y= saveE(Or,y);
        case 8
            y=mirror(Or);
            imshow(y);
            y= saveE(Or,y);

    end
    again=input('do you want to edit again? y/n: ','s');
    Or=y;


s=input('Do you want to save the Image? y/n ','s');
 if s=='y'
        path_name=input("please enter name for your picture ",'s');
        path_name=strcat(path_name,".");
        imwrite(y,strcat(path_name,format));
         disp("Done ");
 else 
     disp('thank you for using  ');
 end

        

end