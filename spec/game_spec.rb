require 'game'

describe Game do

  let(:player1) { double :player }
  let(:player2) { double :player }
  subject(:game) { described_class.new(player1, player2) }

  it 'should have two players' do
    game.should_not be_nil
  end

  it 'should be able to attack other players' do
    expect(player2).to receive(:receive_damage)
    game.attack(player2)
  end

  it 'can call its first player' do
    expect(game.player1).to eq player1
  end

  it 'can call its second player' do
    expect(game.player2).to eq player2
  end
end
