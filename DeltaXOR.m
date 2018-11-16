function W = DeltaXOR( W, X, D )
%DELTAXOR 此处显示有关此函数的摘要
%   此处显示详细说明
    alpha = 0.9;
    
    N = 4;
    
    for k = 1:N
        x = X(k, :)';
        d = D(k);
        
        v = W*x;
        y = Sigmoid(v);
        
        e     = d - y;
        delta = y*(1-y)*e;
        
        dW = alpha*delta*x;     % delta rule
        
        W(1) = W(1) + dW(1); 
        W(2) = W(2) + dW(2);
        W(3) = W(3) + dW(3);
    end
        
end

