function r = cal_r( a,e,f )
% a：轨道半长轴
% e：偏心率
% f：真近点角
r = (a * (1 - e * e) )/ (1 + cos(f));

end

