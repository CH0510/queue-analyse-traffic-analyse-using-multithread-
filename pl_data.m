clear;clc;
C=5;   %�ŵ���
N=1000;  %�û���
H = 2;    %ƽ������ʱ��
lamda_data = load('C:\Users\hp\Desktop\�������C++�̰߳�\mu_2\lamda_data.txt');
ration_data = load('C:\Users\hp\Desktop\�������C++�̰߳�\mu_2\block_ration.txt');
lamda_data = [0;lamda_data];
ration_data = [0;ration_data];
plot(lamda_data*H,ration_data);

lamda_temp=0.01:0.01:N*0.01;
A=lamda_temp*H;
for j=1:length(A)
    sum=0.0;
    for i=1:1:C
        temp=(A(j)^i)/factorial(i);
        sum= sum+temp;
    end
    Pr(j)=(A(j)^C)/(factorial(C)*sum); %�����ʹ�ʽ
end
hold on;
plot(A, Pr, 'r')
title(['���й���ӵ�����ʵķ�����,ƽ������ʱ�䣺',num2str(H)]);
xlabel('������( Elang)');
ylabel('ӵ������');
legend('��������','��������');
grid on;