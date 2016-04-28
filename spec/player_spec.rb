require 'player'

describe Player do

  subject(:lucy) { Player.new('lucy') }
  subject(:daniel) { Player.new('daniel') }


  it "knows it's name" do
    our_player = Player.new('player')
    expect(our_player.name).to eq 'player'
  end

  it 'should begin with a default amount of hitpoints' do
    expect(lucy.hitpoints).to eq Player::DEFAULT_STARTING_HITPOINTS
  end

  it 'should lower his hitpoints when it receives damage' do
    expect{lucy.receive_damage}.to change{lucy.hitpoints}.from(Player::DEFAULT_STARTING_HITPOINTS).to(Player::DEFAULT_STARTING_HITPOINTS - Player::DEFAULT_ATTACK)
  end
end
