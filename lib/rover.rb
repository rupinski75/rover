class Rover
  attr_reader :directions, :direction, :coordinates

  def initialize
    @directions = [:N, :E, :S, :W]
    @direction = :N
    @coordinates = [0,0]
  end

  def rotate_right
    @direction = @directions[(@directions.index(@direction) + 1) % 4]
  end

  def rotate_left
    @direction = @directions[(@directions.index(@direction) - 1) % 4]
  end

  def move
    case direction
    when :N
      @coordinates[1] += 1 
    when :E
      @coordinates[0] += 1
    when :S
      @coordinates[1] -= 1
    when :W
      @coordinates[0] -= 1
    end
  end

end