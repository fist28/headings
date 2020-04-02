class Document
  def initialize
    @headings_numeration = []
    @headings_list = []
  end

  def add_heading(title:, level: 0)
    if @headings_numeration.size.zero?
      @headings_numeration << Array.new.fill(1, 0, level+1)
    else
      previous_numeration =  @headings_numeration[-1]

      if level > previous_numeration.size
        new_numeration = previous_numeration.dup.fill(1, previous_numeration.size, level)
      else
        new_numeration = previous_numeration[0..level]
        new_numeration[level] += 1
      end
      @headings_numeration << new_numeration
    end
    @headings_list << Heading.new(title: title, level: level)
  end

  def to_s
    result = ""
    @headings_list.each_with_index do |heading, index|
      space = "\t" * (heading.level)
      number = @headings_numeration[index].join('.') << '.'
      result << "#{space}#{number}\t#{heading.title.capitalize}\n"
    end
    result
  end
end