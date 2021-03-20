 clc
clear all

algorithm_name={'Original','SSR','MSR','MSRCR','Retinex-based','UILA','DCP','UDCP','GDCP','Ours'};
%zeros(m,n,p)���У�m��ʾm(28)������ָ�ꣻn��ʾn(8)���Աȷ�����p��ʾp(20)��ͼƬ
lytro_index=zeros(8,10,8);
for index=1:8
        
        name = num2str(index);
        sourceA = strcat('..\testimage\',name,'.jpg');
     
    for num=1:length(algorithm_name)
    switch num
        case 1
            A=imread(sourceA);
            F=A;
        case 2
            A=imread(sourceA);
            F=imread(strcat('..\testimage\SSR_',name,'.jpg'));
        case 3 
            A=imread(sourceA);
            F=imread(strcat('..\testimage\MSR_',name,'.jpg'));
        case 4
            A=imread(sourceA);
            F=imread(strcat('..\testimage\MSRCR_',name,'.jpg'));
        case 5
            A=imread(sourceA);
            F=imread(strcat('..\testimage\Fu_',name,'.jpg'));
        case 6
            A=imread(sourceA);  
            F=imread(strcat('..\testimage\UILA_',name,'.jpg'));
        case 7
            A=imread(sourceA);
            F=imread(strcat('..\testimage\DCP_',name,'.jpg'));
        case 8
            A=imread(sourceA);
            F=imread(strcat('..\testimage\UDCP_',name,'.jpg'));
        case 9
            A=imread(sourceA);
            F=imread(strcat('..\testimage\GDCP_',name,'.jpg'));
        case 10
            A=imread(sourceA);
            F=imread(strcat('..\testimage\Our_',name,'.jpg'));
        
            
            
    end
    
     %%%%%  ����ָ��μ�fusion_metrix.m

     pcqi = PCQI(A,F);
     uciqe = UCIQE(F); 
     uiqm = UIQM(F);
     sh = shannon(F);
     ag = avg_gradient(F);
     ei = edge_intensity(F);
%      ssim1 = ssim(A,F);
     mse = metrix_mse(F,A);
     psnr = metrix_psnr(mse);
     
     lytro_index(:,num,index)=[pcqi;uciqe;uiqm;sh;ag;ei;mse;psnr];

     end

end

save('all_lytro_index3','lytro_index');                                                                          

PCQI = lytro_index(1,:,:);
UCIQE = lytro_index(2,:,:);
UIQM = lytro_index(3,:,:);
SH = lytro_index(4,:,:);
AG = lytro_index(5,:,:); 
EI = lytro_index(6,:,:);
% SSIM = lytro_index(7,:,:);
MSE = lytro_index(7,:,:);
PSNR = lytro_index(8,:,:);

PCQI = shiftdim(PCQI);
UCIQE = shiftdim(UCIQE);
UIQM = shiftdim(UIQM);
SH = shiftdim(SH);
AG = shiftdim(AG);
EI = shiftdim(EI);
% SSIM = shiftdim(SSIM);
MSE = shiftdim(MSE);
PSNR = shiftdim(PSNR);

 %�ڵõ��ı���У�ÿһ�б�ʾһ��ͼƬ�����з����Ŀ͹�ָ��
 %ÿһ�б�ʾһ���Աȷ���
 %���ϵ�������ΪOriginal','SSR','MSR','MSRCR','Retinex-based','UILA','DCP','UDCP','GDCP','Ours'
xlswrite('..\ָ��\EI.xls',EI);
xlswrite('..\ָ��\AG.xls',AG);
xlswrite('..\ָ��\SH.xls',SH);
xlswrite('..\ָ��\UIQM.xls',UIQM);
xlswrite('..\ָ��\UCIQE.xls',UCIQE);
xlswrite('..\ָ��\PCQI.xls',PCQI);
xlswrite('..\ָ��\MSE.xls',MSE);
xlswrite('..\ָ��\PSNR.xls',PSNR);



