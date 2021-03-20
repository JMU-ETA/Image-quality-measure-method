function result_epi=myEpi(img_before,img_after)
% ����һ��ͼ��ı�Ե����ָ��EPI(Edge Protect Index),EPIԽ�ӽ�1��˵���㷨�ı�Ե��������Խǿ��
% img_before��ʾԭʼͼ��(���￼�Ǳ�׼ͼ�������Ļ�Ҳ���Կ���һ��ȥ��ǰ��ͼ��Cʵ�ֵ�ʱ�򣬿��ǵ�ƽ̨�����õ���ȥ��ǰ��ͼ��)
% img_after��ʾȥ����ͼ��
img_before=double(img_before);
img_after=double(img_after);
[height,width]=size(img_before);
sum1=0;
sum2=0;
%ȥ��ǰ
for i=1:height   %ˮƽ
    for j=1:width-1
        sum1=sum1+abs(img_before(i,j)-img_before(i,j+1));
    end
end
for i=1:height-1  %��ֱ
    for j=1:width
        sum1=sum1+abs(img_before(i,j)-img_before(i+1,j));
    end
end
%ȥ���
for i=1:height  %ˮƽ
    for j=1:width-1
        sum2=sum2+abs(img_after(i,j)-img_after(i,j+1));
    end
end
for i=1:height-1  %��ֱ
    for j=1:width
        sum2=sum2+abs(img_after(i,j)-img_after(i+1,j));
    end
end
sum1=double(sum1);
sum2=double(sum2);
result_epi=sum2/sum1;
