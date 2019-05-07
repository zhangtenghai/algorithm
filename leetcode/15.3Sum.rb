# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  # nums.combination(3).to_a.select { |ary| ary.sum.zero? }.map(&:sort).uniq
  ary = nums.sort
  res = []
  for i in 0.upto(ary.length-1)
    break if ary[i] > 0 #当>=0时中断 >=0的3个数的合不可能为0
    next if (i > 0 && ary[i] == ary[i-1]) #跳过重复数
    j = i+1
    k = ary.length-1
    
    # p "#{ary[i]}, #{ary[j]}, #{ary[k]}"
    #双指针方法, 3数相加大于0说明右边的大数过大则右指针往内侧移动，反之左指针内侧移动
    while j<k
      if ary[i]+ary[j]+ary[k] == 0
        res << [ary[i], ary[j], ary[k]]
        while j<k && ary[j] == ary[j+1] #左边去重
          j = j + 1
        end
        while j<k && ary[k] == ary[k-1] #右边去重
          k = k - 1
        end
        k = k - 1 # 右标向内移动 继续循环
      end
      
      if ary[i]+ary[j]+ary[k]>0
        k = k - 1
      else
        j = j + 1
      end 
    end
  end
  res
end

p three_sum([0,0,0,0,0])