#冒泡
ary = [85, 4, 82, 89, 0, 94, 38, 26, 11, 23, 13, 79, 66, 84, 92, 71, 2, 67, 15, 22]
# array = 20.times.map { Random.rand(100) }
p "init: #{ary}"

last_p = ary.length-2

for i in 0.upto(last_p)
  for j in 0.upto(last_p-i)
    if ary[j] > ary[j+1]
      ary[j], ary[j+1] = ary[j+1], ary[j]
    end
  end
  p ary
end
p "result: #{ary}"