load("ds.mat")

means = mean(x, 2);

neuron1 = 1;
neuron2 = 2;
neuron3 = 3;
%% 

out = nan(201, 201, 201);
for a = 0:200
    for b = 0:200
        for c = 0:200
            input = means;
            input(neuron1) = -1000 + 10 * a;
            input(neuron2) = -1000 + 10 * b;
            input(neuron3) = -1000 + 10 * c;
            out(a + 1, b + 1, c + 1) = task_1_ii(input);
        end
    end
end
%% 

heatmap(reshape(out(100, :, :), 201, 201));
figure();
heatmap(reshape(out(:, 100, :), 201, 201));
figure();
heatmap(reshape(out(:, :, 100), 201, 201));
