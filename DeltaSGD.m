function W = DeltaSGD( W, X, D )
%DELTASGD �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    alpha = 0.9;
    N = 4;
    for k = 1:N
        x = X(k, :)';
        d = D(k);
        
        v = W * x;
        y = Sigmoid(v);
        
        e = d - y;
        delta = y * (1-y) *e;
        
        dW = alpha*delta*x;
        W = W + dW';
end

