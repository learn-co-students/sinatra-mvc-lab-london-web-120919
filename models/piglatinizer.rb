# frozen_string_literal: true

class PigLatinizer
  def translate(text)
    text = text.split(' ')
    text.map do |word|
      if word[0].match?(/[^aAeEiIoOuU]/)
        word += word.slice!(0) while word[0].match?(/[^aAeEiIoOuU]/)
        word += 'ay'
      else
        word += 'way'
      end
      word
    end.join(' ')
  end
end
