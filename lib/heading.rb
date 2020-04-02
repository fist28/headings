class Heading
  attr_reader :title, :level
  attr_accessor :previous, :next
  def initialize(title:, level: 0)
    @title = title
    @level = level
    @next = nil
    @previous = nil
  end
end