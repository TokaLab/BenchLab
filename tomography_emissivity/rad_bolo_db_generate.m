clear; clc;

%% Upload the dataset configuration
db = Benchmarking_Tomography_v1();

%% generation
db_gen = db_gen_radiation;
db = db_gen.generate(db);

%% save 
folder = "datasets";
filename = "test1";

db_gen.save_db(db,filename,folder)