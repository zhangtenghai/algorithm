ary = [85, 4, 82, 89, 0, 94, 38, 26, 11, 23, 13, 79, 66, 84, 92, 71, 2, 67, 15, 22]
p "init: #{ary}"

def combine_old(ary1, ary2)
  ary = []
  while !ary1.empty? && !ary2.empty?
    if ary1[0] <= ary2[0]
      ary << ary1[0]
      ary1.delete_at(0)
    else
      ary << ary2[0]
      ary2.delete_at(0)
    end
  end
  ary + ary1 + ary2
end

def sort(ary)
  return ary if ary.size <= 1
  left = ary[0, ary.size/2]
  right = ary[ary.size/2, ary.size - ary.size/2]
 
  combine(sort(left), sort(right))
end

def combine(left, right)
  sorted = []
  while !left.empty? && !right.empty?
    sorted << (left.first <= right.first ? left.shift : right.shift)
  end
  sorted + left + right
end

def merge_sort(arr)
  return arr unless arr.size > 1
  mid = arr.size/2
      a, b, sorted = merge_sort(arr[0...mid]), merge_sort(arr[mid..-1]), []
    sorted << (a[0] < b[0] ? a.shift : b.shift) while [a,b].none?(&:empty?)
  sorted + a + b
end

p merge_sort ary
# p sort ary
