require 'spec_helper'

  describe HeadingList do
    subject { described_class.new }

    it 'print element from list' do
      subject.append('foo', 0)
      expect(subject.print).to eq('foo')
    end

  end