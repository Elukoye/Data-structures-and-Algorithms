def sum(num)
    if num == 0 
        num
    else
        num + sum(num - 1)
    end
end 
puts sum(0)
4
3
2
1
0
0(n)