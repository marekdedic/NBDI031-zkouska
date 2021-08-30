load("../ds.mat")

means = mean(x, 2);

neuron1 = 1;
neuron2 = 156;

out = nan(201, 201);
for a = 0:200
    for b = 0:200
        input = means;
        input(neuron1) = -1000 + 10 * a;
        input(neuron2) = -1000 + 10 * b;
        out(a + 1, b + 1) = task_1_ii(input);
    end
end

surf(-1000:10:1000, -1000:10:1000, out);
