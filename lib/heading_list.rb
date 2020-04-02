class HeadingList

  def initialize
    @head = nil
    @tail = nil
  end

  def append(title, level)
    new_heading = Heading.new(title: title, level: level)
    new_heading.next = @head
    @head.previous = new_heading if @head
    @head = new_heading
    @tail ||= @head
    new_heading
  end

  def print
    return nil unless @tail

    node = @tail
    result = node.title
    while (node = node.previous)
      result << node.title
    end
    result
  end
end