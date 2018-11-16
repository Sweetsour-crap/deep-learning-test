function W = Deltabatch(W, X, D)
%DELTABATCH 此处显示有关此函数的摘要
%   此处显示详细说明
    alpha = 0.9;
    
    dWsum = zeros(3, 1);
    
    N = 4;
    for k = 1:N
        x = X(k,:)';
        d = D(k);
        
        v = W*x;
        y = Sigmoid(v);
        e = d - y;
        delta = y * (1-y) * e;
        
        dW = alpha*delta*x;
        dWsum = dWsum + dW;
    end
    
    dWavg = dWsum / N;
    
    W = W + dWavg';
end

