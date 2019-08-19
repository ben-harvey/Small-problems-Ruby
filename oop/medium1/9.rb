=begin

=end
require 'pry'

class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = %w[0 1 2 3 4 5 6 7 8 9 10 Jack King Queen King Ace]

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

