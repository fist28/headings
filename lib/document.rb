class Document
  def initialize
    @headings_numeration = []
    @headings_list = HeadingList.new
  end

  def add_heading(title:, level: 0)
    @headings_list.append(title, level)
  end

  def to_s
    @headings_list.print
  end
end