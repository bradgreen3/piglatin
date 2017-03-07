class PigLatin

  VOWELS = ["A", "E", "I", "O", "U"]

  def self.translate(english)
    result = []
    result = english.split(/(\W)/).map do |word|
      word_translator(word)
    end
    result.join("")
  end

  def self.word_translator(word)
    word[0] == nil ? first_letter = "" : first_letter = word[0]
    if word == " " || word == "" || word == "?" || word == ","
      translated = word
    elsif VOWELS.include?(first_letter.upcase)
      translated = vowel_converter(word)
    else
      translated = consonant_converter(word)
    end
    translated
  end

  def self.consonant_converter(english)
    result = english.split("")
    while !VOWELS.include?(result.first.upcase)
      result.rotate!
    end
    result = result.join("") + "ay"
    result
  end

  def self.vowel_converter(english)
    english + "way"
  end

end
