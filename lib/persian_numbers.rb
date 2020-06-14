require_relative 'persian_numbers/version'
require_relative 'persian_numbers/constants'
require_relative 'persian_numbers/conversion'

module PersianNumbers
  class << self
    def translate_to_words(number)
      Conversion.new(number: number).translate_to_words
    end
  end
end
