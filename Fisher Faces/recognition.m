function accuracy = evaluateSubset(a, b ,c)
min_dist=[];
index=[];
subset_number1=a;
subset_number2=b;
d=c;
[training_matrix, mi, fisher_faces,eig_faces, eval_per]=fisherface(subset_number1,d);
[subs,num,per] = extractSubset(subset_number2);
s= size(subs(1,:));


reconstruction_matrix={};
for j=1:s(2)
    dist=[];
    curr_image=cell2mat(subs(j));
    curr_image=reshape(curr_image,[],1);%%##
    norm_currimage=curr_image-mi;%##
    projected_matrix=fisher_faces' * norm_currimage;% 
    
    for k=1:size(training_matrix,2)
        dist=[dist, (norm(training_matrix(:,k)-projected_matrix))];
        
    end
    
    [m,n]=min(dist);
    min_dist=[min_dist,m];
    index=[index,eval_per(n)];
    reconstruction_sum=zeros(2500,1);
    reconstruction=[];
    for k=1:d
        
       reconstruction=(projected_matrix(k)*(fisher_faces(:,k)));
       reconstruction_sum=reconstruction_sum+(reconstruction);
    end
    
   reconstruction_matrix=[reconstruction_matrix, reshape((reconstruction_sum+mi),50,50)];
end

% imagesc(cell2mat(reconstruction_matrix(20)))
% colormap gray;
% axis off
% axis image;


projected_matrix;
index;
count=0;
for l=1:s(2)
    if index(l)==per(l)
        count=count+1;
    end
end

accuracy=count/s(2)*100;
end