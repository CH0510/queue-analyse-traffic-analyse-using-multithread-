clear;clc;
C=5;   %信道数
N=1000;  %用户数
H = 2;    %平均服务时间
lamda_data = load('C:\Users\hp\Desktop\轨道课设C++线程版\mu_2\lamda_data.txt');
ration_data = load('C:\Users\hp\Desktop\轨道课设C++线程版\mu_2\block_ration.txt');
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
    Pr(j)=(A(j)^C)/(factorial(C)*sum); %呼损率公式
end
hold on;
plot(A, Pr, 'r')
title(['呼叫过程拥塞概率的仿真结果,平均服务时间：',num2str(H)]);
xlabel('话务量( Elang)');
ylabel('拥塞概率');
legend('仿真曲线','理论曲线');
grid on;