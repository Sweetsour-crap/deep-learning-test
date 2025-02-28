clear all

X = [0 0 1;
    0 1 1;
    1 0 1;
    1 1 1;
    ];  %input

D = [0
    0
    1
    1
    ];  %true output

W = 2*rand(1,3) - 1; %³õÊ¼»¯È¨Öµ

for epoch = 1:1000000
    W = DeltaBatch(W, X, D);
end

N = 4;
for k = 1:N
    x = X(k, :)';
    v = W*x;
    y = Sigmoid(v)
end
