function need_num = floor_two4(number, n)

    num = floor(number);
    str = num2str(num);
    len = length(str);
    
    if num == 0
        err = number;
        digits(n + len - 1);                  %�˴�Ϊ��Ҫ��С��λ+����λ
        need_num = num + vpa(err, n+len);     %��Ҫ������С����������Ƿ�����
        need_num = double(need_num);
    else
        err = number - num;                   %��ȡС��λ
        digits(n + len);                      %�˴�Ϊ��Ҫ��С��λ+����λ
        need_num = num + vpa(err, n+len);     %��Ҫ������С����������Ƿ�����
        need_num = double(need_num);
    end
end