class Heading
  attr_reader :title, :level, :numeration
  attr_accessor :previous, :next

  def initialize(title:, level: 0)
    @title = title
    @level = level
    @next = nil
    @previous = nil
    @numeration = build_numeration
  end

  def to_s
      space = "\t" * (level)
      number = numeration.join('.') << '.'
      "#{space}#{number}\t#{title.capitalize}\n"
  end
  private

  def build_numeration
    if previous
      previous_numeration =  previous.numeration

      if level > previous.numeration.size
        new_numeration = previous_numeration.dup.fill(1, previous_numeration.size, level)
      else
        new_numeration = previous_numeration[0..level]
        new_numeration[level] += 1
      end

      new_numeration
    else

      Array.new.fill(1, 0, level+1)
    end
  end
end