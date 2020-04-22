deck = []

class Card
    attr_writer :value
    attr_writer :suit

    def initialize value, suit
        @value = value
        @suit = suit
        puts "Card: #{value} of #{suit}"
    end
end

# Create whole deck of 52 cards
    # loop through #cards_in_suit 4 times
        # each time, assign them a certain #suit
            # at the end, each card should have a VALUE and a SUIT

    # Card should have a VALUE and a SUIT
        # EXAMPLE:
            # VALUE: 2
            # SUIT: HEARTS
                # a 2 of Hearts

cards_in_suit = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
    # Shuffle the numbers:
    shuffled_values = cards_in_suit.shuffle

for i in 1..4
    shuffled_values.each do |card_value|
        suits = ["hearts","diamonds","clubs","spades"]
        deck << Card.new(card_value,suits[i-1]) # will add SUIT --> (i,suits[i-1])
    end
    i += 1
end

# Shuffle the suits
shuffled_suits = deck.shuffle(random: Random.new(5))

class Player
    attr_accessor :name
    attr_accessor :bankroll
    attr_accessor :hand

    def initialize name, bankroll, hand
        @name = name
        @bankroll = bankroll
        @hand = hand
        puts "#{name} has $#{bankroll} dollars and this in his hand: #{hand}"
    end
end

puts "-----------------------------------------------------------"
puts "----Welcome to our casino. Time to play some Blackjack.----"
puts "-----------------------------------------------------------"

puts "Casino: What is your name?"
user_name = gets.chomp
puts "-----------------------------------------------------------"

puts "Casino: Nice to meet you, #{user_name}"

puts "-----------------------------------------------------------"

human_player = Player.new user_name, 100, [shuffled_suits.sample, shuffled_suits.sample]
the_house = Player.new "The House", 1000, [shuffled_suits.sample, shuffled_suits.sample]

puts "-----------------------------------------------------------"