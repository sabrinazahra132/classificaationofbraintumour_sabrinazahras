clc; 
clear all;
%% PROSES MEMBACA CITRA

folder = cd('D:\Pengolahan Citra\DATASET UTS - Copy\Semua');
images = dir([folder,'\*.JPG']);
nimages = length(images);


        for i = 1:1
        currentimagename = images(i).name;
        imagenames(i,:) = {currentimagename};
        currentimage=imread(fullfile(folder, currentimagename), 'JPG');
%% PROSES PRE-PROCESSING
R = rgb2gray (currentimage);

figure(1), imshow(R);
        end
% A = histeq(R);
% F = imresize(A, [512 512]);
% %% EKSTRASI FITUR
%     offsets = [0 30; -30 30; -30 0; -30 -30];
%     [glcm,S1] = graycomatrix(F, 'Offset', offsets);
%     stats = graycoprops(glcm,{'Contrast','Homogeneity','Energy','Correlation'});
%     FiturA=stats.Contrast;
%     FiturB=stats.Homogeneity;
%     FiturC=stats.Energy;
%     FiturD=stats.Correlation;
%     Fitur = [FiturA FiturB FiturC FiturD];
%     e(i, :)=Fitur;
%         end
% %eksport ke excel
% sheet = 1;
% filename = 'Data GLCM2.xlsx';%tukar nama untuk level
% xlswrite(filename,e,sheet,'A1:P341');%tukar sesuai jml data image
% xlswrite(filename,imagenames,sheet,'Q1:Q341');%tukar sesuai jml data image