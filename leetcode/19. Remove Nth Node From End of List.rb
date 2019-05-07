# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  return head if n < 0
  hash = {}
  i = 0
  while(head!=nil)
    hash[i] = head
    i = i + 1
    head = head.next
  end
  # return hash[0] if n > i
  # pre = i-n-1 < 0 ? 0 : i-n-1
  return hash[i-n+1] if i-n-1 < 0
  hash[i-n-1]&.next = hash[i-n+1]
  hash[0]
end

l1 = ListNode.new(1)
l2 = ListNode.new(2)
l3 = ListNode.new(3)
l4 = ListNode.new(4)
l5 = ListNode.new(5)
l1.next =l2
l2.next =l3
l3.next =l4
l4.next =l5
p remove_nth_from_end(l1, 2)