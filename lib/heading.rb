class Heading
  attr_reader :title, :level
  def initialize(title:, level: 0)
    @title = title
    @level = level
  end
end