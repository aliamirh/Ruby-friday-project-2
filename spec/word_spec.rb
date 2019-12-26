require 'rspec'
require 'pry'
require 'word'

describe "Word" do
  before(:each) do
    Word.clear()
  end
  describe(".all") do
    it("returns an empty array when there are no albums") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a word") do
      word = Word.new("Apple", nil)
      word.save()
      word2 = Word.new("Grape", nil)
      word2.save()
      expect(Word.all).to(eq([word,word2]))
    end
  end
  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word = Word.new("Apple", nil )
      word2 = Word.new("Apple", nil)
      expect(word).to(eq(word2))
    end
  end
  describe('.find') do
    it("finds an word by id") do
      word = Word.new("Grape", nil)
      word.save()
      word2 = Word.new("Apple", nil)
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end
  describe('#update') do
    it("updates an word by id") do
      word = Word.new("Apple", nil)
      word.save()
      word.update("Grape")
      expect(word.words).to(eq("Grape"))
    end
  end

  describe('#delete') do
    it("deletes an word by id") do
      word = Word.new("Apple", nil)
      word.save()
      word2 = Word.new("Grape", nil)
      word2.save()
      word.delete()
      expect(Word.all).to(eq([word2]))
    end
  end





end
