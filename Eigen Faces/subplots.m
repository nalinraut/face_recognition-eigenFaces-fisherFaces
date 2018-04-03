function subplot()
figure('Name','Original and Reconstructed Images for d=9','NumberTitle','off');
subplot(2,5,1);
imagesc(imread('original_1_32.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,2);
imagesc(imread('original_2_50.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,3);
imagesc(imread('original_3_24.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,4);
imagesc(imread('original_4_25.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,5);
imagesc(imread('original_5_20.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,6);
imagesc(imread('reconstructed_1_32.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,7);
imagesc(imread('reconstructed_2_50.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,8);
imagesc(imread('reconstructed_3_24.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,9);
imagesc(imread('reconstructed_4_25.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,10);
imagesc(imread('reconstructed_5_20.png'));
axis off;
axis image;
colormap gray;
%%
figure('Name','Original and Reconstructed Images for d=31','NumberTitle','off');
subplot(2,5,1);
imagesc(imread('original_1_32.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,2);
imagesc(imread('original_2_50.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,3);
imagesc(imread('original_3_24.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,4);
imagesc(imread('original_4_25.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,5);
imagesc(imread('original_5_20.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,6);
imagesc(imread('reconstructed_1_32_30.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,7);
imagesc(imread('reconstructed_2_50_30.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,8);
imagesc(imread('reconstructed_3_24_30.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,9);
imagesc(imread('reconstructed_4_25_30.png'));
axis off;
axis image;
colormap gray;

subplot(2,5,10);
imagesc(imread('reconstructed_5_20_30.png'));
axis off;
axis image;
colormap gray;



figure('Name','Eigen Faces for d=30','NumberTitle','off');
imagesc(imread('eigenfaces30.png'));
axis off;
axis image;
colormap gray;


figure('Name','Eigen Faces for d=10','NumberTitle','off');
imagesc(imread('eigenfaces10.png'));
axis off;
axis image;
colormap gray;

end