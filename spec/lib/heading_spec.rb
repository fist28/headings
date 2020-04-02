require 'spec_helper'

describe Heading do
  subject { described_class.new(title: 'foo Bar', level: 0) }

  it 'has title attribute' do
    expect(subject.title).to eq('foo Bar')
  end

  it 'has level attribute' do
    expect(subject.level).to eq(0)
  end

  it 'has next_heading attribute' do
    expect(subject.next_heading).to be_nil
  end

  it 'can change next_heading attribute' do
    subject.next_heading = 'foo'
    expect(subject.next_heading).to eq('foo')
  end

  it 'has previous_heading attribute' do
    expect(subject.previous_heading).to be_nil
  end

  it 'can change previous_heading attribute' do
    subject.previous_heading = 'foo'
    expect(subject.previous_heading).to eq('foo')
  end
end