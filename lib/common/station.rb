require 'json'

class Station
  attr_accessor :id, :location, :lines, :last_updated

  def initialize(system_event)
    @id = system_event[]
    @location = ''
    @lines = system_event[]
    @last_updated = system_event[]
  end

  def as_json(options={})
    {
        id: @id,
        location: @location,
        lines: @lines,
        last_updated: @last_updated
    }
  end

  def to_json(*options)
    as_json(*options).to_json(*options)
  end
end
