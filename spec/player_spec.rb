require 'player'

describe Player do
  subject(:omar) { Player.new('Omar') }
  subject(:john) { Player.new('John') }

describe '#name' do
  it 'returns the name' do
  expect(omar.name).to eq 'Omar'
  end
end

describe '#hit_points' do
  it 'returns the hit points' do
  expect(omar.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
end

describe '#attack' do
  it 'damages the player' do
  expect(john).to receive(:receive_damage)
  omar.attack(john)
  end
end

describe '#receive_damage' do
  it 'reduces the player hit points' do
  expect { omar.receive_damage }.to change { omar.hit_points }.by(-20)
  end
end
end