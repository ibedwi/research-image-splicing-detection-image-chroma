% 1. Baca gambar
img = imread('tes_image.jpg');

% 2.1 Ubah gambar RGB menjadi YCbCr
img_ycbcr = rgb2ycbcr(img);
img_y = img_ycbcr(:,:,1);
img_cb = img_ycbcr(:,:,2);
img_cr = img_ycbcr(:,:,3);

figure;

subplot(2,2,1), imshow(img_ycbcr);
title('YCbCr');
subplot(2,2,2), imshow(img_y);
title('Y');
subplot(2,2,3), imshow(img_cb);
title('Cb');
subplot(2,2,4), imshow(img_cr);
title('Cr');

% 2.2 Edge Image
% 2.3 Gray level co-occurence matrix of thresholded edge image
% 2.4 Boosting feature selection
% 2.5 SVM