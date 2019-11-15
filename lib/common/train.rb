require 'json'

class Train
  attr_accessor :id, :direction, :line, :destination, :last_updated

  def initialize(system_event)
    @id = system_event[]
    @direction = system_event[]
    @line = system_event[]
    @destination = system_event[]
    @last_updated = system_event[]
  end

  def as_json(options={})
    {
      id: @id,
      direction: @direction,
      line: @line,
      destination: @destination,
      last_updated: @last_updated
    }
  end

  def to_json(*options)
    as_json(*options).to_json(*options)
  end
end
