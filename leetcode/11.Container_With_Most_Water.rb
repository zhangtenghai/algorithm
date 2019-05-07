# @param {Integer[]} height
# @return {Integer}
# 利用动态规划, 左边为L，右边为R 时间复杂度O(N)
def max_area(height)
  area, l, r = 0, 0, height.length - 1

  while l<r do
    water = (r-l)*([height[r],height[l]].min)
    area = water if water > area
    #哪边柱子低则向内移动
    height[l] <= height[r] ? l=l+1 : r=r-1
  end
  return area
end

p max_area([1,8,6,2,5,4,8,3,7])