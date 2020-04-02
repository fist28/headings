class HeadingList

  def initialize
    @head = nil
    @tail = nil
  end

  def append(title, level)
    new_heading = Heading.new(title: title, level: level)
    new_heading.previous_heading = @tail
    @tail.next_heading = new_heading if @head
    new_heading.calculate_numeration

    @tail = new_heading
    @head ||= @tail

    new_heading
  end

  def print
    return nil unless @head

    node = @head
    result = node.to_s
    while (node = node.next_heading)
      result << node.to_s
    end
    result
  end
end