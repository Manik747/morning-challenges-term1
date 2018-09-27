# You get any card as an argument. Your task is to return a suit of this card.

# eg:

# ('3C') -> return 'clubs'
# ('3D') -> return 'diamonds'
# ('3H') -> return 'hearts'
# ('3S') -> return 'spades'

def define_suit(card)
  suit = card[-1]
  case suit
  when "C"
    return "Clubs"
  when "S"
    return "Spade"
  when "D"
    return "Diamond"
  when "H"
    return "Heart"
  end
end

puts define_suit("3H")