require 'rspec'
require 'pry'
require 'word'

describe "Word" do
  before(:each) do
    Word.clear()
  end
end
  describe(".all") do
  it("returns an empty array when there are no albums") do
    expect(Word.all).to(eq([]))
  end
end
