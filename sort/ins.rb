#插入排序
ary = [85, 4, 82, 89, 0, 94, 38, 26, 11, 23, 13, 79, 66, 84, 92, 71, 2, 67, 15, 22]

p "init: #{ary}"

last_p = ary.length-1

for i in 1..(last_p)
  for j in (i).downto(1)
    if ary[j] < ary[j-1]
      ary[j], ary[j-1] = ary[j-1], ary[j] 
    else
      break
    end
    p ary
  end
end
p ary