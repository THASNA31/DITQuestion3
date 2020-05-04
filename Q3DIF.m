%% N = 10
iter = 10000;
N10sum = zeros(1,iter);
n = 10;

j = 1;
while j <= iter
    N = 1:1:n;
    value = [];
    for i = 1:n
        tempValue = randi([1,length(N)]);
        if isempty(value)
            value = N(tempValue);
        else
            value(end+1) = abs(value(end) - N(tempValue));
        end
        N = setdiff(N,N(tempValue));
    end

    N10sum(j) = sum(value);
    j = j+1;
end

N10Mean = mean(N10sum)
N10std = std(N10sum)

prob45 = sum(N10sum > 45)/iter

%% N = 20
iter = 1000;
N20sum = zeros(1,iter);
n = 20;

j = 1;
while j <= iter
    N = 1:1:n;
    value = [];
    for i = 1:n
        tempValue = randi([1,length(N)]);
        if isempty(value)
            value = N(tempValue);
        else
            value(end+1) = abs(value(end) - N(tempValue));
        end
        N = setdiff(N,N(tempValue));
    end

    N20sum(j) = sum(value);
    j = j+1;
end

N20mean = mean(N20sum)
N20std = std(N20sum)

prob45 = sum(N20sum > 160)/iter
