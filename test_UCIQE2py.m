function uciqe_result=test_UCIQE2py(file_path)
    img0=imread(file_path);%����ԭͼ
    uciqe_result = UCIQE(img0);
end

