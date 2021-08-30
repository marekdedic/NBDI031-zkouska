load("../ds.mat");

[lambda, psi, T, stats, F] = factoran(x.', 3, Rotate = 'varimax', OptimOpts = statset('Display', 'final'));
