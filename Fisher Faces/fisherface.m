function [training_matrix,mi, fisher_faces, eig_faces,  eval_per, d]=fisherface(subset_number1,d)

[subs,num,per] = extractSubset(subset_number1);
face_matrix=[];
temp_matrix=[];

s= size(subs(1,:));
%% Computing the face_matrix from a given subset to be trained
for i=1:(s(2))
   a=cell2mat(subs(i));
   temp_matrix=reshape(a,[],1);
   face_matrix=[face_matrix, temp_matrix];
end
%%

number_classes = (size(face_matrix,2))/(s(2)/10); % Number of classes (or persons)
number_persons= (s(2)/10); % Number of images in each class
training_images = number_persons * number_classes; % Total number of training images
mi=mean(face_matrix,2);% mean image
A = face_matrix -mi;% deviation of each image with mean image
covarianceMatrix = A'*A; % L is the surrogate of covariance matrix C=A*A'.
[V, D] = eig(covarianceMatrix);

% Diagonal elements of D are the eigenvalues for both L=A'*A and C=A*A'.
[D, Ds] = sort(diag(D),'descend');
V = V(:,Ds);
eig_vector=V(:,1:d);

eig_faces = A*eig_vector;

[Sw, Sb] = scatterBetween(subs);
Sw=eig_faces'* Sw* eig_faces;
Sb=eig_faces' *Sb* eig_faces ;

[J_eig_vec, J_eig_val] = eig(Sb,Sw); % Cost function J = inv(Sw) * Sb

[J_eig_val, J] = sort(diag(J_eig_val),'descend');
J_eig_vec = J_eig_vec(:,J);
fisher_faces=eig_faces*J_eig_vec;

%% Subplot. To check subplot please uncomment the following commented lines and run function main_fisherFace.m
% for j=1:d
%     subplot(6,6,j);
%     imagesc(reshape(fisher_faces(:,j),50,50));
%     axis off;
%     axis image;
%     colormap gray;
% end

training_matrix=fisher_faces'*A;
eval_per=per;

end