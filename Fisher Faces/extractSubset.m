function [subs,num,per] = extractSubset(subset_number)

[im, person, number, subset] = readFaceImages('faces');
subset1={};
subset2={};
subset3={};
subset4={};
subset5={};
number1=[];
number2=[];
number3=[];
number4=[];
number5=[];
person1=[];
person2=[];
person3=[];
person4=[];
person5=[];

for i=1:640
    
    if subset(i)==1
        subset1=[subset1, im(i)];
        number1=[number1, number(i)];
        person1=[person1, person(i)];
        
    elseif subset(i)==2
        subset2=[subset2, im(i)];
        number2=[number2, number(i)];
        person2=[person2, person(i)];
        
    elseif subset(i)==3
        subset3=[subset3, im(i)];
        number3=[number3, number(i)];
        person3=[person3, person(i)];
        
    elseif subset(i)==4
        subset4=[subset4, im(i)];
        number4=[number4, number(i)];
        person4=[person4, person(i)];
        
    elseif subset(i)==5
        subset5=[subset5, im(i)];
        number5=[number5, number(i)];
        person5=[person5, person(i)];
    end
                    
end
if subset_number==1
    subs=subset1;
    num=number1;
    per=person1;
    
elseif subset_number==2
    subs=subset2;
    num=number2;
    per=person2;
        
elseif subset_number==3
    subs=subset3;
    num=number3;
    per=person3;
        
elseif subset_number==4
    subs=subset4;
    num=number4;
    per=person4;
        
elseif subset_number==5
    subs=subset5;
    num=number5;
    per=person5;

elseif subset_number==6
    subs=[subset1,subset5];
    num=[number1,number5];
    per=[person1, person5];
        
        
end

end