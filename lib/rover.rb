class Direction

  attr_reader :direction
  
  @@directions = [:N, :E, :S, :W]

  def initialize(direction)
    @direction = direction if @@directions.include?(direction)
  end

  def rotate_right
    Direction.new(@@directions[(@@directions.index(self.direction) + 1) % 4])
  end

  def rotate_left
    Direction.new(@@directions[(@@directions.index(self.direction) - 1) % 4])
  end
  
end

# Coordinates = Data.define(:x, :y)

class Coordinates < Data.define(:x, :y)
  def to_a
    [x,y]
  end
end

class Rover

  def initialize
    @direction = Direction.new(:N)
    @coordinates = Coordinates.new(0,0)
  end

  def rotate_right
    @direction = @direction.rotate_right
  end

  def rotate_left
    @direction = @direction.rotate_left
  end

  def move
    case direction
    when :N
      @coordinates = Coordinates.new(@coordinates.x, @coordinates.y + 1)
    when :E
      @coordinates = Coordinates.new(@coordinates.x + 1, @coordinates.y)
    when :S
      @coordinates = Coordinates.new(@coordinates.x, @coordinates.y - 1)
    when :W
      @coordinates = Coordinates.new(@coordinates.x - 1, @coordinates.y)
    end
  end

  def direction
    @direction.direction
  end

  def coordinates
    @coordinates.to_a
  end
end

