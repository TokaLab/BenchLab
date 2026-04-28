clear; clc; close all

%% configuration

folder = "datasets";
filename = "test1";
plt_opts=1;
methods = ["Tiko";"ML"];
box.R= [2.75 2.75 9.25 9.25]; box.Z= [-5.65 5.65 5.65 -5.65];
%% addpath

addpath configurations\
addpath methods\

%% upload

load(folder+"\"+filename+".mat")

%% diagnostics initialise

Bolo = Diag_Bolo();
Bolo  = Bolo.Upload(1);
% 
% W = Bolo.Weights;

%% test

for i1 = 1 : length(db)

    % extact data
    data = db{i1}.data_rad;
    equi = db{i1}.equi;

    for i2 = 1 : size(data,1)
      
          equi.Rad = reshape(data(i2,:),size(equi.psi_n));
        Bolo = Bolo.measure(equi);
        
                            if plt_opts==1
                                 drawnow
                            tiledlayout(1,3)
                            clf
                            nexttile
                            Phantom_plot = equi.Rad; Phantom_plot(~equi.geo.wall.inside)=NaN;
                            hold off
                            fill(box.R,box.Z,[0.75 0.75 0.75]);hold on
                            fill(equi.geo.wall.R,equi.geo.wall.Z,[0.2422 0.1504 0.6603]);  hold on
                            contourf(equi.geo.grid.Rg,equi.geo.grid.Zg,Phantom_plot,'LineStyle','none');
                            contour(equi.geo.grid.Rg,equi.geo.grid.Zg,equi.psi_n,40,'k','LineWidth',0.5)
                            contour(equi.geo.grid.Rg,equi.geo.grid.Zg,equi.psi_n,[-0.1 1],...
                            'r','LineWidth',2)
                            plot(equi.geo.wall.R,equi.geo.wall.Z,'k','LineWidth',4); 
                            %plot(equi.LCFS.R,equi.LCFS.Z,'r--','LineWidth',4)
                            axis equal
                            C2=colorbar()
                            
                            ylabel(C2,'[a.u]')
                            xlabel('R [m]')
                            ylabel('Z [m]')
                            title('Phantom')
                             
                            end


        for m1 = 1 : size(methods,1)

            if methods(m1) == "Tiko"
                R0 = Tiko_rec(equi,Bolo);
                
            elseif methods(m1) == "ML"
                R0 = ML_rec(equi,1,Bolo);
            else
                disp("inversion method ")
                return
            end
           
           db{i1}.rmse.(methods(m1))(i2) = rmse(R0(:),equi.Rad(:))./max(equi.Rad(:));
           db{i1}.ssim.(methods(m1))(i2) = ssim(R0,equi.Rad);

            if plt_opts ==1
                    R0_plot = R0; R0_plot(~equi.geo.wall.inside)=NaN;
                    nexttile
                    hold off
                    fill(box.R,box.Z,[0.75 0.75 0.75]);hold on
                    fill(equi.geo.wall.R,equi.geo.wall.Z,[0.2422 0.1504 0.6603]);  hold on
                    contourf(equi.geo.grid.Rg,equi.geo.grid.Zg,R0_plot,'LineStyle','none');
                    contour(equi.geo.grid.Rg,equi.geo.grid.Zg,equi.psi_n,40,'k','LineWidth',0.5)
                    contour(equi.geo.grid.Rg,equi.geo.grid.Zg,equi.psi_n,[-0.1 1],...
                    'r','LineWidth',2)
                    plot(equi.geo.wall.R,equi.geo.wall.Z,'k','LineWidth',4); 
                    %plot(equi.LCFS.R,equi.LCFS.Z,'r--','LineWidth',4)
                    axis equal
                    C2=colorbar()
                    
                    ylabel(C2,'[a.u]')
                    xlabel('R [m]')
                    ylabel('Z [m]')
                    title('Phantom')     

            end
            
        end

    end
end


%%
hold off
clf
figure(2)
hold on

bins=[0:0.01:0.2];

histogram(db{1}.rmse.Tiko,bins,'Normalization','pdf')
histogram(db{1}.rmse.ML,bins,'Normalization','pdf','FaceAlpha',0.4)

legend('Tiko','ML')
xlabel('NRMSE')
ylabel('Probability density')
title('NRMSE distribution')
grid on
