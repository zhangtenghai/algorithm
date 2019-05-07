# # @param {String} s
# # @return {Boolean}
# def is_valid(s)
#   h = {
#     "{" => "}",
#     "[" => "]",
#     "(" => ")"
#   }
#   reutrn false if s.length%2 !=0
#   left = 0
#   right = left+1

#   while(left < right && right < s.length) do
#     if h[s[left]] == s[right]
#       s[left..right] = ""
#       left = 0
#       right = left + 1
#     else
#       left = left + 1
#       right = right + 1
#     end
#   end
#   s == ""
# end

# p is_valid("{}[{]")

CLOSE_PARENTHESES = {
  ")" => "(",
  "}" => "{",
  "]" => "["
}

def is_valid(string)
  return true if string.empty?

  stack = []

  string.chars.each do |c|
    pair = CLOSE_PARENTHESES[c]
    if pair
      res = stack.pop
      return false unless res == pair
    else
      stack.push(c)
    end
  end


  stack.empty?
end

p is_valid("{[()]}")