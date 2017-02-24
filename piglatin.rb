module PigLatin
  extend self

  VOWELS = ["a", "e", "i", "o", "u"]

  def translate(english)
      result = []
      english.gsub(",", "").split.each do |word|
        result << word_translator(word)
      end
      result.join(" ").downcase
  end

  def word_translator(word)
    first_letter = word[0].downcase
    if VOWELS.include?(first_letter)
      translated = vowel_converter(word)
    else
      translated = consonant_converter(word)
    end
    translated
  end

  def consonant_converter(word)
    result = word.split("")
    while !VOWELS.include?(result.first.downcase)
      result.rotate!
    end
    result.join("") + "ay"
  end

  def vowel_converter(word)
    word + "way"
  end

end
