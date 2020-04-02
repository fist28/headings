class Heading
  attr_reader :title, :level, :numeration
  attr_accessor :previous_heading, :next_heading

  def initialize(title:, level: 0)
    @title = title
    @level = level
    @next_heading = nil
    @previous_heading = nil
    @numeration = nil
  end

  def to_s
      space = "\t" * (level)
      number = numeration.join('.') << '.'
      "#{space}#{number}\t#{title.capitalize}\n"
  end

  def calculate_numeration
    if previous_heading
      previous_numeration =  previous_heading.numeration

      if level >= previous_numeration.size
        new_numeration = previous_numeration.dup.fill(1, previous_numeration.size..level)
      else
        new_numeration = previous_numeration[0..level]
        new_numeration[level] += 1
      end

      @numeration = new_numeration
    else
      @numeration = Array.new.fill(1, 0, level+1)
    end
  end
end