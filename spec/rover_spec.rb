require 'rover'

# describe 'Space' do
#   rover = Rover.new
#   it 'has 4 directions' do
#     expect(rover.directions.length).to eq(4)
#   end
# end

describe 'Rover' do
  rover = Rover.new

  it 'is initially facing north' do
    expect(rover.direction).to eq(:N)
  end

  it 'is in the middle of coordinate system' do
    expect(rover.coordinates).to eq([0,0])
  end
  
  describe '#turn_right' do
    it 'should be rotated to the E' do
      expect(rover.direction).to eq(:N)
      rover.rotate_right
      expect(rover.direction).to eq(:E)
      rover.rotate_right
      expect(rover.direction).to eq(:S)
      rover.rotate_right
      rover.rotate_right
      expect(rover.direction).to eq(:N)
    end
  end

  it 'can rotate left' do
    expect(rover.direction).to eq(:N)
    rover.rotate_left
    expect(rover.direction).to eq(:W)
    rover.rotate_left
    expect(rover.direction).to eq(:S)
    rover.rotate_left
    expect(rover.direction).to eq(:E)
    rover.rotate_left
  end

  it 'can move forward' do 
    rover.move
    expect(rover.coordinates).to eq([0,1])
    rover.move
    rover.move
    expect(rover.coordinates).to eq([0,3])
  end

  it 'can rotate left and move forward' do
    rover.rotate_left
    rover.move
    expect(rover.coordinates).to eq([-1, 3])
  end

    it 'can rotate left and move forward' do
    rover.rotate_left
    rover.move
    expect(rover.coordinates).to eq([-1, 2])
  end

  it 'can reach N, x: 5, y: 0' do
    rover = Rover.new
    rover.rotate_right
    5.times {rover.move}
    rover.rotate_left
    expect(rover.coordinates).to eq([5,0])
    expect(rover.direction).to eq(:N)
  end

  it 'can reach W, x: 0, y: -3' do
    rover = Rover.new
    rover.rotate_right
    rover.rotate_right
    3.times {rover.move}
    rover.rotate_right
    expect(rover.coordinates).to eq([0,-3])
    expect(rover.direction).to eq(:W)
  end

  it 'can reach S, x: 0, y: 0' do
    rover = Rover.new
    rover.rotate_left
    rover.rotate_left
    expect(rover.coordinates).to eq([0,0])
    expect(rover.direction).to eq(:S)
  end

  it 'can reach E, x: 4, y: 0' do
    rover = Rover.new
    rover.rotate_right
    4.times {rover.move}
    expect(rover.coordinates).to eq([4,0])
    expect(rover.direction).to eq(:E)
  end

  it 'can reach E, x: -1, y: -1' do
    rover = Rover.new
    rover.rotate_left
    rover.move
    rover.rotate_left
    rover.move
    rover.rotate_left
    expect(rover.coordinates).to eq([-1,-1])
    expect(rover.direction).to eq(:E)
  end

  it 'can reach N, x: -1, y: 7' do
    rover = Rover.new
    7.times {rover.move}
    rover.rotate_left
    rover.move
    rover.rotate_right
    expect(rover.coordinates).to eq([-1,7])
    expect(rover.direction).to eq(:N)
  end
end