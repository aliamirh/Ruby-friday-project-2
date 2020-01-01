class Definition
  attr_reader :id
  attr_accessor :input, :word_id

  @@definitions = {}
  @@total_rows = 0

  def initialize(input, word_id, id)
    @input = input
    @word_id = word_id
    @id = id || @@total_rows += 1
  end

  def ==(definition_to_compare)
    (self.input() == definition_to_compare.input()) && (self.word_id() == definition_to_compare.word_id())
  end

  def self.all
    @@definitions.values
  end




end
