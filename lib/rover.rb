class Rover
  attr_reader :directions, :direction, :coordinates

  def initialize
    @directions = %w[:N, :E, :S, :W]
    @direction = :N
    @coordinates = [0,0]
  end

  def rotate_right
    case direction
    when :N 
      @direction = :E
    when :E
      @direction = :S
    when :S
      @direction = :W
    when :W
      @direction = :N
    end
  end

  def rotate_left
    case direction
    when :N 
      @direction = :W
    when :W
      @direction = :S
    when :S
      @direction = :E
    when :E
      @direction = :N
    end
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