=begin

=end
require 'pry'

class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = %w[0 1 2 3 4 5 6 7 8 9 10 Jack Queen King Ace]

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def get_value
    VALUES.index(rank.to_s)
  end

  def <=>(other_card)
    get_value <=> other_card.get_value
  end
end

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  attr_accessor :cards

  def initialize
    @cards= []
    initialize_deck
  end

   def draw
    initialize_deck if @cards.empty?
    @cards.pop
  end

  private

  def initialize_deck
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end
end

class PokerHand
  attr_reader :hand, :deck

  def initialize(deck)
    @deck = deck
    @hand = []
    initialize_hand
  end

  def initialize_hand
    5.times do
      hand << deck.draw
    end
  end

  def ranks
    hand.each_with_object([]) {|card, arr| arr << card.rank}
  end

  def suits
    hand.each_with_object([]) {|card, arr| arr << card.suit}
  end

  def print
    hand.each {|card| puts card}
  end

  def count_rank(total)
    ranks.any? {|rank| ranks.count(rank) == total}
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    check_rank = (ranks + ["Jack", "King", "Queen", "Ace", 10]).uniq == ranks
    flush? && check_rank
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    string_ranks = ranks.map(&:to_s)
    count_rank(4)
  end

  def full_house?
    string_ranks = ranks.map(&:to_s)
    count_rank(2) && count_rank(3)
  end

  def flush?
    suits.all? {|suit| suit == suits[0]}
  end

  def straight?
    indices = hand.each_with_object([]) {|card, arr| arr << card.get_value}
    indices.sort.chunk_while {|a, b| a + 1 == b}.to_a.size == 1
  end

  def three_of_a_kind?
    count_rank(3)
  end

  def two_pair?
    pairs = ranks.select {|rank| ranks.count(rank) == 2}
    pairs.size == 4
  end

  def pair?
    count_rank(2)
  end
end

class Array
  alias_method :draw, :pop
end



hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'
p hand.ranks
p hand.suits
hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate #== 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'
