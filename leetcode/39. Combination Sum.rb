# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}

# def combination_sum(candidates, target)
#     return [[]] if target == 0 #we made the target
#     return [] if target < candidates.min #we can't reach the target
#     candidates.flat_map{|c| combination_sum(candidates,target - c).map {|f| [c,*f].sort } }.uniq #recur
# end

def combination_sum(candidates, target)
  candidates.sort!
  res = []
  search_res_list(res, Array.new, 0, target, candidates)
  res
end

# 利用递归
# 1.外层循环遍历源数组res
# 2.内层递归计算剩余值target,如果target=0 则表示求和与目标相等，大于res项则表示可以继续相减
# 3.当target=0时，存储结果并pop出末尾元素，往后循环(i++)继续找其他res其他符合项求和
def search_res_list(res, list, start, target, candidates)
  
  if target == 0
    res << Array.new(list)
    return
  end
  for i in start...candidates.count
    p i 
    if target < candidates[i]
      break
    end
    list << candidates[i]

    search_res_list(res, list, i, target - candidates[i], candidates)
    p list
    list.pop
  end
end

p combination_sum([2,3,5], 8)

