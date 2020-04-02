require 'spec_helper'

describe Heading do
  subject { described_class.new(title: 'foo Bar', level: 0) }

  it 'has title attribute' do
    expect(subject.title).to eq('foo Bar')
  end

  it 'has level attribute' do
    expect(subject.level).to eq(0)
  end

  it 'has next attribute' do
    expect(subject.next).to be_nil
  end

  it 'can change next attribute' do
    subject.next = 'foo'
    expect(subject.next).to eq('foo')
  end

  it 'has previous attribute' do
    expect(subject.previous).to be_nil
  end

  it 'can change previous attribute' do
    subject.previous = 'foo'
    expect(subject.previous).to eq('foo')
  end
end