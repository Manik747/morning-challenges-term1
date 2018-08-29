# 2. There is an odd employee at The Company who needs some code written that will provide
#them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd
#employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).
fib=[0,1]
100.times do 
        fib << fib[-1] + fib[-2]
    end
puts fib

