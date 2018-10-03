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
