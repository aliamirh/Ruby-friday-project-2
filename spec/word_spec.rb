require 'rspec'
require 'word'


describe "#Word"do
  before(:each) do
    Word.clear()
  end

  describe(".all") do
    it("Returns an empty array") do
      expect(Word.all()).to(eq([]))
    end
  end
  describe(".save") do
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
      word = Word.new("Apple", nil)
      word2 = Word.new("Apple", nil)
      expect(word).to(eq(word2))
    end
  end
  describe('.clear') do
    it("clears all words") do
      word = Word.new("Apple", nil)
      word.save()
      word2 = Word.new("Grape", nil)
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds an words by id") do
      word = Word.new("Apple", nil)
      word.save()
      word2 = Word.new("Grape", nil)
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('#update') do
    it("updates an word by id") do
      word = Word.new("Apple", nil)
      word.save()
      word.update("Peach")
      expect(word.input).to(eq("Peach"))
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
