require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  #update our test for #dock
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike #we want to return the bike we docked
  end
  #update our test for #bike
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike #again we need to return the bike we just docked
  end

  it 'stops from taking bike if none available' do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  it 'does not allow user to dock if a bike is already there' do
    bike = Bike.new
    subject.dock(bike)
    expect { subject.dock(bike)}.to raise_error("Docking Station full")
  end
end
