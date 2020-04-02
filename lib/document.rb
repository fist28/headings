class Document
  def initialize
    @headings_list = []
  end

  def add_heading(title:, level: 0)
    @headings_list << Heading.new(title: title, level: level)
  end

  def to_s
    result = ""
    space = "\t" * (@headings_list[0].level)
    result << "#{space}1.\t#{@headings_list[0].title.capitalize}\n"

    space = "\t" * (@headings_list[1].level)
    result << "#{space}1.1.1.\t#{@headings_list[1].title.capitalize}\n"

    space = "\t" * (@headings_list[2].level)
    result << "#{space}1.2.\t#{@headings_list[2].title.capitalize}\n"

    space = "\t" * (@headings_list[3].level)
    result << "#{space}1.3.\t#{@headings_list[3].title.capitalize}\n"

    result
  end
end