%%��֪Z�����һά���ݣ�����һ����ת����%%

clear;
clc;
load('fitness.mat');
x = 0:1:749;
y = GB(1,1:750);
y = fliplr(y);
z = log10(y);
% figure(1);
% plot(x,z);
n = 100;    % ��תһ����ȡ��ĸ���
theta = (0:n)/n*2*pi;%101һ���㣬һȦ�ص�ԭ�㣬0��101Ҫ�غ�����sintheta(n+1) = 0;
sintheta = sin(theta);
sintheta(n+1) = 0;
%ͶӰ��xyƽ�棬��ԭ����x����Բ��ֱ����thetaΪr��x��ļнǣ���ԭ����x�ֽ⵽Բ��x,y�ᡣ
X = x' * cos(theta);
Y = x' * sintheta;
Z = z' * ones(1,n+1);
figure(2);
surf(X,Y,Z);
shading interp;
text('Interpreter','latex');
txt = texlabel('\frac{\left|\left\{\boldsymbol D\right\}\right|}{\left\{\boldsymbol D\right\}\in\mathrm R^{12}}$$');
xlabel( 'feasible region $\frac{\left|\left\{{D}\right\}\right|}{\left\{D\right\}\in R^{12}}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',30);
set(gca,'FontSize',30);
% ylabel('feasible region\in R^{12}','Fontname', 'Times New Roman','FontSize',30);
zlabel('lg(fitness)','Fontname', 'Times New Roman','FontSize',30);
set(gca,'xtick',[],'xticklabel',[]);
set(gca,'ytick',[],'yticklabel',[]);
title('Schematic diagram of fitness varies with feasible region','Fontname', 'Times New Roman','FontSize',20);





% GB(1,:) = fliplr(GB);
% G = GB(1:1501);
% new = zeros(1501);
% new(1,:) = G;
% new(:,1) = G';
% new(1501,:) = G;
% new(:,1501) = G';
% new = log10(new);
% t = -75:0.1:75;
% [X, Y] = meshgrid(t);
% Z=new;
% surf(X,Y,Z);title('����ͼ');
% G = GB';
% new = zeros(5001);
% new(1,:) = GB;
% new(:,1) = G;
% new = log10(new);
% GG = G*GB;
% GGG = log10(GG);
% t = -50:0.02:50;
% [X, Y] = meshgrid(t);
% % %Z = X.*exp(-X.^2 - Y.^2);
% Z=GGG;

% subplot(1,3,1);
% mesh(X,Y,Z);title('����ͼ');
% % subplot(1,3,2);
% surf(X,Y,Z);title('����ͼ');
% % subplot(1,3,3);
% % plot3(X,Y,Z);title('����ͼ');
% figure(1);
% x = -75:0.1:75;
% x=x';
% % y = -75:0.1:75;
% y = zeros(1501);
% y = y(1,:);
% y=y'
% z = log10(G);
% z=z';
% scatter3(x,y,z)
% % figure(2);
% % scatter(x,y,115,z);
% % figure(3);
% [X,Y,Z]=griddata(x,y,z,linspace(min(x),max(x))',linspace(min(y),max(y)),'v4');
% pcolor(X,Y,Z);
% shading interp;
% % % colormap(flipud(jet(24)));
% % figure(4);
% % contourf(X,Y,Z);
% figure(5);
% f = surf(X,Y,Z);
% axis square;
% direction=[0 0 1];
% rotate(f,direction,180);
