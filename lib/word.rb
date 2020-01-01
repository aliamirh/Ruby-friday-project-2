class Word
  attr_accessor :id, :input

  @@words = {}
  @@total_words = 0

  def initialize(input, id)
    @input = input
    @id = id || @@total_words += 1
  end

  def self.all()
    @@words.values()
  end

  def save
    @@words[self.id] = Word.new(self.input, self.id)
  end

  def ==(word_to_compare)
    self.input() == word_to_compare.input()
  end

  def self.clear
    @@words = {}
    @@total_words = 0
  end

  def self.find(id)
    @@words[id]
  end

  def update(input)
    @input = input
  end

  def delete
    @@words.delete(self.id)
  end

  def definitions
    Definition.find_by_word(self.id)
  end


end
