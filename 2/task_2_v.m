load("../ds.mat");

[lambda, psi, T, stats, F] = factoran(x.', 2, Rotate = 'varimax', OptimOpts = statset('Display', 'final'));
