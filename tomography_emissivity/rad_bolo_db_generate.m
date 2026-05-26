clear; clc;

%% addpath

addpath configurations\
addpath methods\

%% Upload the dataset configuration
db = Benchmarking_Tomography_v2();

%% generation
db_gen = db_gen_radiation;
db = db_gen.generate(db);

%% save 
folder = "datasets";
filename = "test_TCV";

db_gen.save_db(db,filename,folder)