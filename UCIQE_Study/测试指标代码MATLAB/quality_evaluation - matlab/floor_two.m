function need_num = floor_two(number)

    num = floor(number);
    str = num2str(num);
    len = length(str);
    
    if num == 0
        err = number;
        digits(2 + len - 1);                  %�˴�Ϊ��Ҫ��С��λ+����λ
        need_num = num + vpa(err, 2+len);     %��Ҫ������С����������Ƿ�����
        need_num = double(need_num);
    else
        err = number - num;                   %��ȡС��λ
        digits(2 + len);                      %�˴�Ϊ��Ҫ��С��λ+����λ
        need_num = num + vpa(err, 2+len);     %��Ҫ������С����������Ƿ�����
        need_num = double(need_num);
    end
end