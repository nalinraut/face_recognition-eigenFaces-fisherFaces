function []=main_eigenFaces()
clc
clear all

d=[9,30];
colors=['b','r','g','y','c','k'];
t=[1 2 3 4 5 ];

R1=zeros(6,5);

for i=1:6
   for j=1:5
       accuracy = evaluateSubset(i, j,d(1));
       R1(i,j)=accuracy;
   end
 
end
   figure('Name','Trend of accuracies for d=9','NumberTitle','off');
   plot(R1(1,:),colors(1));
  
   hold on;
   plot(R1(2,:),colors(2));
   
   hold on;
   plot(R1(3,:),colors(3));
    
   hold on;
   plot(R1(4,:),colors(4));
    
   hold on;
   plot(R1(5,:),colors(5));
    
   hold on;
   plot(R1(6,:),colors(6));
   hold off;
   legend('Subset 1', 'Subset 2', 'Subset 3', 'Subset 4', 'Subset 5', 'Subset 1+5');
   title('Trend in accuracies for test subsets');
   xlabel('Subsets on which test is conducted');
   ylabel('Percentage Accuracy');

fprintf('For d=9, following are the percentage accuracies:\n');

T1=table({'Subset 1'; 'Subset 2'; 'Subset 3'; 'Subset 4'; 'Subset 5'; 'Subset 1+5'},R1(:,1),R1(:,2),R1(:,3),R1(:,4),R1(:,5));
T1.Properties.VariableNames = {'Training_Subsets' 'Test_Subset_1' 'Test_Subset_2' 'Test_Subset_3' 'Test_Subset_4' 'Test_Subset_5'};
disp(T1);


R2=zeros(6,5);
for i=1:6
   for j=1:5
       accuracy = evaluateSubset(i, j,d(1));
       R2(i,j)=100-accuracy;
   end
end

fprintf('For d=9, following are the percentage errors:\n');

T2=table({'Subset 1'; 'Subset 2'; 'Subset 3'; 'Subset 4'; 'Subset 5'; 'Subset 1+5'},R2(:,1),R2(:,2),R2(:,3),R2(:,4),R2(:,5));
T2.Properties.VariableNames = {'Training_Subsets' 'Test_Subset_1' 'Test_Subset_2' 'Test_Subset_3' 'Test_Subset_4' 'Test_Subset_5'};
disp(T2);

R3=zeros(6,5);
for i=1:6
   for j=1:5
       accuracy = evaluateSubset(i, j,d(2));
       R3(i,j)=accuracy;
   end
end

fprintf('For d=30, following are the percentage accuracies:\n');

T3=table({'Subset 1'; 'Subset 2'; 'Subset 3'; 'Subset 4'; 'Subset 5'; 'Subset 1+5'},R3(:,1),R3(:,2),R3(:,3),R3(:,4),R3(:,5));
T3.Properties.VariableNames = {'Training_Subsets' 'Test_Subset_1' 'Test_Subset_2' 'Test_Subset_3' 'Test_Subset_4' 'Test_Subset_5'};
disp(T3);

R4=zeros(6,5);
for i=1:6
   for j=1:5
       accuracy = evaluateSubset(i, j,d(2));
       R4(i,j)=100-accuracy;
   end
end
   figure('Name','Trend of accuracies for d=30','NumberTitle','off');
   plot(t,R3(1,:),colors(1));
   hold on;
   plot(t,R3(2,:),colors(2));
   hold on;
   plot(t,R3(3,:),colors(3));
   hold on;
   plot(t,R3(4,:),colors(4));
   hold on;
   plot(t,R3(5,:),colors(5));
   hold on;
   plot(t,R3(6,:),colors(6));
   hold off;
   legend('Subset 1', 'Subset 2', 'Subset 3', 'Subset 4', 'Subset 5', 'Subset 1+5');
   title('Trend in accuracies for test subsets');
   xlabel('Subsets on which test is conducted');
   ylabel('Percentage Accuracy');

fprintf('For d=30, following are the percentage errors:\n');

T4=table({'Subset 1'; 'Subset 2'; 'Subset 3'; 'Subset 4'; 'Subset 5'; 'Subset 1+5'},R4(:,1),R4(:,2),R4(:,3),R4(:,4),R4(:,5));
T4.Properties.VariableNames = {'Training_Subsets' 'Test_Subset_1' 'Test_Subset_2' 'Test_Subset_3' 'Test_Subset_4' 'Test_Subset_5'};
disp(T4);
         
subplots();
end

