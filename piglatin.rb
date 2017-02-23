class PigLatin

  VOWELS = ["A", "E", "I", "O", "U"]

  def self.translate(english)
      result = []
      english.split.each do |word|
        result << word_translator(word)
      end
      result.join(" ")
  end

  def self.word_translator(word)
    first_letter = word[0].upcase
    if VOWELS.include?(first_letter)
      translated = vowel_converter(word)
    else
      translated = consonant_converter(word)
    end
    translated
  end

  def self.consonant_converter(english)
    english[1..-1] + english[0] + "ay"
  end

  def self.vowel_converter(english)
    english + "way"
  end

end
