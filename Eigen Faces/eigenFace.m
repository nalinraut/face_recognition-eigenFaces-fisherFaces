function [training_matrix,mu, eig_faces, eval_per, d]=eigenFace(subset_number1,c)
subset_number=subset_number1;
d=c;
[subs,num,per] = extractSubset(subset_number);

face_matrix=[];
temp_matrix=[];
s= size(subs(1,:));
%%
for i=1:(s(2))
   a=cell2mat(subs(i));
   temp_matrix=reshape(a,[],1);
   face_matrix=[face_matrix, temp_matrix];
end


%%
mu=mean(face_matrix,2);
face_matrix=(face_matrix-mu);
covariance_matrix= face_matrix'* face_matrix;
[U,S,V]=svd(covariance_matrix);
diag_eigval= diag(S);
eig_vector= U(:,1:d);
eig_faces=face_matrix*eig_vector;

%% Subplot. To check subplot please uncomment the following commented lines and run function main_eigenFaces.m

% for j=1:30
%     subplot(5,6,j);
%     imagesc(reshape(eig_faces(:,j),50,50));
%     axis off;
%     axis image;
%     colormap gray;
% end

training_matrix=eig_faces'*face_matrix;
eval_per=per;
end
    



