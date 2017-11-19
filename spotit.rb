def create_cards(p)
  working = []
  (0...p*p+p+1).to_a.combination(p+1) do |i|
    if working.size == 0 || working.all?{|w| (w&i).size == 1}
      working << i
    end
  end
  return working
end

def check_cards(cards)
  cards.combination(2) do |c1,c2|
    if (c1&c2).size > 1
      return false
    end
  end
  return true
end