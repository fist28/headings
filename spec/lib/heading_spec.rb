require 'spec_helper'

describe Heading do
  subject { described_class.new(title: 'foo Bar', level: 0) }

  it 'has title attribute' do
    expect(subject.title).to eq('foo Bar')
  end

  it 'has level attribute' do
    expect(subject.level).to eq(0)
  end
end