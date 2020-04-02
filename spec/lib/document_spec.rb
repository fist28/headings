require 'spec_helper'

describe Document do
  subject { described_class.new }

  let(:heading_small_seed) do
    [
      {id: 1, title: "heading1", heading_level: 0},
      {id: 2, title: "heading2", heading_level: 2},
      {id: 3, title: "heading3", heading_level: 1},
      {id: 4, title: "heading4", heading_level: 1}
    ]
  end

  it 'print document with headings' do
    heading_small_seed.each do |heading|
      subject.add_heading(title: heading[:title], level: heading[:heading_level])
    end
    expected_print = "1.\tHeading1\n\t\t1.1.1.\tHeading2\n\t1.2.\tHeading3\n\t1.3.\tHeading4\n"
    expect(subject.to_s).to eq(expected_print)
  end

end