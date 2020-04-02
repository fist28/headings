# Example  
```ruby
    headings = [
      {id: 1, title: "heading1", heading_level: 0},
      {id: 2, title: "heading2", heading_level: 2},
      {id: 3, title: "heading3", heading_level: 1},
      {id: 4, title: "heading4", heading_level: 1}
    ]
    document = Document.new
    
    headings.each do |heading|
      document.add_heading(title: heading[:title], level: heading[:heading_level])
    end
    
    document.to_s
```