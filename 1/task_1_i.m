x = readtable('../data.csv');
y = readtable('../labels.csv');

save("ds.mat", "x", "y");
