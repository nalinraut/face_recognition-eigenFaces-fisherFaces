function [Sw, Sb] = scatterBetween(subset_number)


face_matrix=[];
for j=1:size(subset_number,2)
    temp=reshape(cell2mat(subset_number(j)),[],1);
    face_matrix=[face_matrix, temp];
end

class1=face_matrix(:,1:size(subset_number,2)/10);
class2=face_matrix(:,size(subset_number,2)/10+1:2*size(subset_number,2)/10);
class3=face_matrix(:,2*size(subset_number,2)/10+1:3*size(subset_number,2)/10);
class4=face_matrix(:,3*size(subset_number,2)/10+1:4*size(subset_number,2)/10);
class5=face_matrix(:,4*size(subset_number,2)/10+1:5*size(subset_number,2)/10);
class6=face_matrix(:,5*size(subset_number,2)/10+1:6*size(subset_number,2)/10);
class7=face_matrix(:,6*size(subset_number,2)/10+1:7*size(subset_number,2)/10);
class8=face_matrix(:,7*size(subset_number,2)/10+1:8*size(subset_number,2)/10);
class9=face_matrix(:,8*size(subset_number,2)/10+1:9*size(subset_number,2)/10);
class10=face_matrix(:,9*size(subset_number,2)/10+1:10*size(subset_number,2)/10);

m=mean(face_matrix,2);
m1=mean(class1,2);
m2=mean(class2,2);
m3=mean(class3,2);
m4=mean(class4,2);
m5=mean(class5,2);
m6=mean(class6,2);
m7=mean(class7,2);
m8=mean(class8,2);
m9=mean(class9,2);
m10=mean(class10,2);

c1=class1-mean(class1,2);
c2=class2-mean(class2,2);
c3=class3-mean(class3,2);
c4=class4-mean(class4,2);
c5=class5-mean(class5,2);
c6=class6-mean(class6,2);
c7=class7-mean(class7,2);
c8=class8-mean(class8,2);
c9=class9-mean(class9,2);
c10=class10-mean(class10,2);

Sw=zeros(2500);
combine_class= {c1 c2 c3 c4 c5 c6 c7 c8 c9 c10};
for i=1:10
    sum=zeros(2500);
    d=zeros(2500);
    for j=1:size(subset_number,2)/10
        temp=cell2mat(combine_class(i));
        d=temp(:,j)*temp(:,j)';
        sum=sum+d;
    end
    Sw=Sw+sum;
end


%Sw=c1*c1' + c2*c2' + c3*c3' + c4*c4' + c5*c5' + c6*c6' + c7*c7' + c8*c8' + c9*c9' + c10*c10';
Sb=(m1-m)*(m1-m)' + (m2-m)*(m2-m)' + (m3-m)*(m3-m)' + (m4-m)*(m4-m)' + (m5-m)*(m5-m)' + (m6-m)*(m6-m)' + (m7-m)*(m7-m)' + (m8-m)*(m8-m)' + (m9-m)*(m9-m)' + (m10-m)*(m10-m)';
Sb=Sb*7;

    
    

end