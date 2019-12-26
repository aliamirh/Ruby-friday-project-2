class Word
  attr_reader :id, :words

  @@words = {}
  @@total_rows = 0

  def initialize(words, id)
    @words = words
    @id = @id = id || @@total_rows += 1
  end

  def self.all
    @@words.values().sort {|a, b| a.words.downcase <=> b.words.downcase}
  end

  def save
    @@words[self.id] = Word.new(self.words, self.id)
  end

  def == (word_to_compare)
    self.words() == word_to_compare.words()
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@words[id]
  end


end
