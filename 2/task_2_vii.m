load("../ds.mat");

[lambda2] = factoran(x.', 2, Rotate = 'varimax', OptimOpts = statset('Display', 'final'));
[lambda3] = factoran(x.', 3, Rotate = 'varimax', OptimOpts = statset('Display', 'final'));

biplot(lambda2, 'LineWidth', 2, 'MarkerSize', 20);
figure();
biplot(lambda3, 'LineWidth', 2, 'MarkerSize', 20);
