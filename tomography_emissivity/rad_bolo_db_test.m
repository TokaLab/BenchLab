clear; clc;

%% configuration

folder = "datasets";
filename = "test1";

methods = ["Tiko";"ML"];

%% addpath

addpath configurations\
addpath methods\

%% upload

load(folder+"\"+filename+".mat")

%% diagnostics initialise

Bolo = Diag_Bolo();
Bolo  = Bolo.Upload(1);

W = Bolo.Weights;

%% test

for i1 = 1 : length(db)

    % extact data
    data = db{i1}.data_rad;
    equi = db{i1}.equi;

    for i2 = 1 : size(data,1)

        equi.Rad = reshape(data(i2,:),size(equi.psi_n));
        Bolo = Bolo.measure(equi);

        for m1 = 1 : size(methods,1)

            if methods(m1) == "Tiko"
                R0 = Tiko_rec(equi,Bolo);
            elseif methods(m1) == "ML"
                R0 = ML_rec(equi,1,Bolo);
            else
                disp("inversion method ")
                return
            end

        end

    end
end
