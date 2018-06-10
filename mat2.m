function C = mat2( omega,w,i  )
% omega : 升交点赤经
% w：近心点角距
% i：轨道倾角
C(1,1) = - cos(omega) * sin(w) - sin(omega) * cos(w) * cos(i);
C(2,1) = - sin(omega) * sin(w) + cos(omega) * cos(w) * cos(i);
C(3,1) = cos(w) * sin(i);


end

