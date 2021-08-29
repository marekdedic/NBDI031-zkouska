x = readmatrix('../data.csv');
y = readmatrix('../labels.csv').';

save("ds.mat", "x", "y");
