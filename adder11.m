str1 =input('Please input the first 11-base number: ','s');
str2 =input('Please input the second11-base number: ','s');

len1 = length(str1);
len2 = length(str2);

num = max(len1 , len2); 
adder_num = num+1;

ex_num = abs(len1 - len2);
k = zeros(1,ex_num);
comp = char(num2str(k));
comp1 = erase(comp,' ' );

if len1>=len2
    str1 = str1;
    str2 = [comp1,str2];
else
    str2 = str2;
    str1 = [comp1,str1];
end
os = 0; 
outcome = '';
for i = 1:num
    if str1(num-i+1) == 'A'
        add1 = 10;
        
    else
            add1 = str2num(str1(num-i+1));
    end
    if str2(num-i+1) =='A'
         add2 = 10;
    else
         add2 = str2num(str2(num-i+1));
     end
    sum1 = add1 + add2 + os;
    sum_wei = mod(sum1,11);
    if sum1 >=11
        os = 1;
    else
        os = 0;
    end
    if  sum_wei == 10
        char sum_wei;
        sum_wei = 'A';
    end
    sum_wei = num2str(sum_wei);
    outcome = [sum_wei,outcome];
    if i == num && os ==1
        outcome = ['1', outcome];
    end
    add1 = 0;
    add2 = 0;
end
disp(outcome)
