clc
clear all
close all

load data2.txt;
A = data2;

%************A(:3)������볤��************%
%************A(:4)��ƫ����       ************%
%************A(:5)��������   ************%
%************A(:6)�����ĵ�Ǿ�************%
%************A(:7)��������ྭ************%
%************A(:8)��������    ************%

n = size(A); % ���A������������
i = 1;
while(1)
    r(i) = cal_r(A(i,3),A(i,4),A(i,8));
    B = mat1(A(i,7),A(i,6),A(i,5));
    C = mat2(A(i,7),A(i,6),A(i,5));
    P(i,:) = r(i) * cos(A(i,8)) * B + r(i) * sin(A(i,8)) * C;
    i = i + 1;
    if i > n
        break;
    end
end

figure(1)
plot3(P(:,1),P(:,2),P(:,3),'b*','LineWidth',4);
grid on
figure(2)
plot(P(:,1),P(:,2),'ro','LineWidth',4);
grid on
% set(gca, 'XGrid', 'on');
% set(gca,'linewidth',4); % �Ӵָ�����

% set(gcf,'color','yellow'); % �޸�figure��ɫ����

% set(gca,'color','yellow')
color = getColor(8.88, 1, 10);
set(gca,'color',color);
set(gca,'gridlinestyle','--');

grid on