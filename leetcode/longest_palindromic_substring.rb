# @param {String} s
# @return {String}
# def longest_palindrome(s)
#   h = {}
#   r = s[0]
#   s.chars.each_with_index do |t, i|
#     if h[t]
#       h[t].select {|j| r.length < i-j+1 }.each do |j|
#         str = s[j..i]
#         r = str if huiwen(str)
#       end
#     end
#     h[t] ||= []
#     h[t] << i
#   end
#   r
# end

# def huiwen(s)
#   s == s.reverse
# end


# @param {String} s
# @return {String}
def is_palindrome?(string)
  string.reverse == string
end

def longest_palindrome(string)
  start = 0
  max_length = 1
  
  (1...string.length).each do |idx|  
    p idx
    p max_length
    
    if idx - max_length - 1 >= 0
      substring = string[ idx - max_length - 1..idx ]
      p substring
      if is_palindrome?( substring )
        start = idx - max_length - 1
        max_length += 2
        next
      end
    end
      
    if idx - max_length >= 0 
      substring = string[ idx - max_length..idx ]
      p substring
      if is_palindrome?( substring )
        start = idx - max_length
        max_length += 1
      end
    end
    p "===="
  end
  string[ start...start + max_length ]
end

p longest_palindrome("babadabb")