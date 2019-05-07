# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  datas = {
    "1" => [],
    "2" => ["a","b","c"],
    "3" => ["d","e","f"],
    "4" => ["g","h","i"],
    "5" => ["j","k","l"],
    "6" => ["m","n","o"],
    "7" => ["p","q","r","s"],
    "8" => ["t","u","v"],
    "9" => ["w","x","y","z"]
  }

  # ======================FIRST=========================  #
  return [] if digits.length == 0
  combos = [""]
  digits.each_char do |ch|
    combos = datas[ch].flat_map{|letter| combos.map{|combo| p(combo+letter);combo + letter}}
  end
  combos

  # ======================SEGREGATE=========================  #
  # comb = datas.fetch_values(*(digits.to_s.gsub("1","").chars))
  # result = []
  # compose(comb, "", result) if comb.length >= 1
  # result

  # ======================SECOND=========================  #
end

def compose(mutli_ary, item, result)
  point = 0
  mutli_ary[point].each do |pre_item|
    comb_str = "#{item}#{pre_item}"
    if point+1 < mutli_ary.length
      compose(mutli_ary[(point+1)..(mutli_ary.length-1)], comb_str, result)
    else
      result << comb_str
    end
  end
end

p letter_combinations("23")
