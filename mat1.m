function B = mat1( omega,w,i )
% omega : ������ྭ
% w�����ĵ�Ǿ�
% i��������
B(1,1) = cos(omega) * cos(w) - sin(omega) * sin(w) * cos(i);
B(2,1) = sin(omega) * cos(w) + cos(omega) * sin(w) * cos(i);
B(3,1) = sin(w) * sin(i);

end

