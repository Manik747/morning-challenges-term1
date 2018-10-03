<<<<<<< HEAD
class Card
    def initialize(suit, rank)
        @suit=suit
        @rank=rank
    end
    
    def face_card?
        # Is the card a face card (above 10)?
        if rank == 11
            rank = "Jack"
        elsif rank == 12
            rank = "Queen"
        else rank == 13
            rank = "King"
        end
            
    end 
    
    def to_s
        # Return human readable card
    end
end
=======
 class Card
  include Comparable
  
  attr_accessor :suit, :rank, :rank_names 
  
  def initialize(suit, rank)
    # Create a new card
    @suit = suit
    @rank = rank
    @rank_names = {
      '1': 'Ace',
      '11': 'Jack',
      '12': 'Queen',
      '13': 'King'
    }    
  end

  def face_card?
    # Is the card a face card (above 10)?
    @rank > 10
  end

  def <=>(other)
    @rank <=> other.rank
  end
  
  def to_s
    # Return human readable card
    rank = @rank_names[@rank.to_s.to_sym] || @rank.to_s
    suit = @suit.to_s
    suit[0] = suit[0].upcase
    "#{rank} of #{suit}"
  end
end
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
