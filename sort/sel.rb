#选择排序
ary = [85, 4, 82, 89, 0, 94, 38, 26, 11, 23, 13, 79, 66, 84, 92, 71, 2, 67, 15, 22]
p "init: #{ary}"
last_p = ary.length-1

for i in 0.upto(last_p-1)
  min, index = ary[i], 0
  for j in i.upto(last_p)
    min, index  = ary[j], j if min > ary[j]
  end
  ary[i], ary[index] = ary[index], ary[i] #if i!=last_p
end

p "result: #{ary}"