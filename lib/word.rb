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

end
