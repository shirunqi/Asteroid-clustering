function C = mat2( omega,w,i  )
% omega : ������ྭ
% w�����ĵ�Ǿ�
% i��������
C(1,1) = - cos(omega) * sin(w) - sin(omega) * cos(w) * cos(i);
C(2,1) = - sin(omega) * sin(w) + cos(omega) * cos(w) * cos(i);
C(3,1) = cos(w) * sin(i);


end

