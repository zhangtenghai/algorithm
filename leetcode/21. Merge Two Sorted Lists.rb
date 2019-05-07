# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  pointl1 = l1
  pointl2 = l2
  n = ListNode.new(0)
  while pointl1 != nil && pointl2 != nil
    p pointl1.val, pointl2.val
    if pointl1.val <= pointl2.val
      n.next = ListNode.new(pointl1.val)
      pointl1 = pointl1.next
    else
      n.next = ListNode.new(pointl2.val)
      pointl2 = pointl2.next
    end
    n = n.next
    p "====="
  end

  # if pointl1.next == nil && pointl2!=nil
  #   n.next = pointl2
  #   break
  # end

  # if pointl2.next == nil && pointl1.next != nil
  #   n.next = pointl1
  #   break
  # end
  n
end

# def merge_two_lists(l1, l2)
#   merge(l1, l2)
# end

# def merge(l1, l2, n = nil, val = 0)
#   if l1==nil || l2 ==nil
#     return l1 == nil ? l2 : l1
#   end

#   if l1.val <= l2.val
#     val = l1.val
#     l1 = l1.next
#   else
#     val = l2.val
#     l2 = l2.next
#   end
#   n  = ListNode.new(val)
#   n.next = merge(l1, l2, n, val)
#   n
# end

def gen_node(vals, i=0)
  return if i >= vals.length 
  n  = ListNode.new(vals[i])
  n.next = gen_node(vals, i=i+1)
  n
end


a = gen_node([1,2,4])
b = gen_node([1,3,4])

p merge_two_lists(a,b)
