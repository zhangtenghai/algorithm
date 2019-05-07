# @param {Integer} n
# @return {String[]}
# def generate_parenthesis(n)
#   gen("()",n)
# end

# def gen(str, target,  i = 0, final = [])
#   if  i == target -1
#     final << str
#     return final
#   end
#   result = []
#   0.upto(str.length-1).each do |i|
#     result <<  "#{str[0...i]}()#{str[i..str.length-1]}"
#   end
#   result.uniq

#   t = result.each do |x|
#     gen(x, target, i+1, final)
#   end
#   final.uniq
# end


def generate_parenthesis(n)
  recurse(n, 0, 0, '', [])
end

# 0=open c=close
def recurse(n, o, c, cur, res)
  res << cur if o + c == 2 * n

  recurse(n, o + 1, c, cur + '(', res) if o < n
  recurse(n, o, c + 1, cur + ')', res) if c < o

  res
end
p generate_parenthesis(7)