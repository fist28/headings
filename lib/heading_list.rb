class HeadingList

  def initialize
    @head = nil
    @tail = nil
  end

  def append(title, level)
    new_heading = Heading.new(title: title, level: level)
    new_heading.next_heading = @head
    @head.previous_heading = new_heading if @head
    new_heading.calculate_numeration
    @head = new_heading
    @tail ||= @head
    new_heading
  end

  def print
    return nil unless @tail

    node = @tail
    result = node.to_s
    while (node = node.previous_heading)
      result << node.to_s
    end
    result
  end
end