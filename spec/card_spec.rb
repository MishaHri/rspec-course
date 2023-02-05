
class Card
  attr_accessor :rank, :suite

  def initialize(rank, suite)
    @rank = rank
    @suite = suite
  end
end

RSpec.describe Card do

  let!(:card) { Card.new("Ace", "Spades") }

  it "has a rank and that ranke can change" do
    expect(card.rank).to eq("Ace")
    card.rank = "Queen"
    expect(card.rank).to eq("Queen")
  end

  it "has a suite" do
    expect(card.suite).to eq("Spades")
  end

  it "has a custom eror message" do
    comparison = "Spades"
    expect(card.suite).to eq(comparison), "Hey, i expected #{comparison} but i got #{card.suite}instead!"
  end

end
