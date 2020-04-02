require 'spec_helper'

  describe HeadingList do
    subject { described_class.new }
    let(:heading1) { Heading.new(title: 'foo', level: 0) }
    let(:heading2) { Heading.new(title: 'bar', level: 1) }

    it 'print element from list' do
      subject << heading1
      expect(subject.print).to eq(heading1.title)
    end

  end