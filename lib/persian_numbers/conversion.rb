class Conversion
  class InvalidNumberError < StandardError; end

  PLACE_VALUE_SEPARATOR = ' و '

  attr_reader :number

  def initialize(number:)
    @number = format_number(number.to_s)
  end

  def translate_to_words
    number = map_persian_input(@number)
    validate_input(number)
    numbers = format_number_with_separator(number)
    translate(numbers)
  rescue StandardError
    raise InvalidNumberError, "Error in parsing and converting number: #{@number}"
  end

  private

  # Converts a Persian number to English format
  # e.g. map_persian_input('۱۲۳۴۵') => 12345
  #
  def map_persian_input(number)
    number.chars
          .map { |ch| PERSIAN_NUMBER_MAP[ch] || ch }
          .join
  end

  # Safe-parses number and raise exception if not valid
  #
  def validate_input(number)
    Integer(number)
  rescue StandardError
    raise InvalidNumberError, 'The input is not a valid number, should be digits.'
  end

  # Formats number and add separator
  # e.g. format_number_with_separator('12345') => 12,345
  #
  def format_number_with_separator(number, separator = ',')
    number
      .reverse
      .gsub(/(\d{3})(?=\d)/, "\\1#{separator}")
      .reverse
      .split(',')
  end

  # Translates number into it Persian word format
  # e.g. translate(["12", "345"]) => دوازده هزار و سیصد و چهل و پنج
  #
  def translate(numbers)
    converted = []

    numbers.each_with_index do |value, index|
      base_name = LARGE_NUMBERS_IN_PERSIAN[(numbers.size - index - 1) * 3]
      place_value = translate_group(value)
      converted << "#{place_value} #{base_name}".strip if place_value != ''
    end

    converted.delete_if(&:empty?).join(PLACE_VALUE_SEPARATOR)
  end

  # Translates each group of 3 digits
  # e.g. translate_group("345") => سیصد و چهل و پنج
  #
  def translate_group(number)
    return '' if convert_to_integer(number) == 0

    converted = []
    length = number.size
    position = length
    number.chars.each_with_index do |value, _index|
      place_value = translate_place_value(number, value, position)
      converted << place_value
      position -= 1
      position -= 1 if PLACE_VALUE_TEENS.values.include?(place_value)
    end

    converted.compact.join(PLACE_VALUE_SEPARATOR)
  end

  # Translates each place value
  # e.g. translate_place_value("3", 3) => سیصد
  #
  def translate_place_value(number, value, position)
    converted = nil
    int_value = Integer(value)

    if position == 1
      converted = PLACE_VALUE_ONES[int_value] if int_value != 0
    elsif position == 2
      last_two_digits = number.split(//).last(2).join
      if int_value == 1 && (11..19).include?(convert_to_integer(last_two_digits))
        converted = PLACE_VALUE_TEENS[Integer(number[-1])]
      elsif int_value != 0
        converted = PLACE_VALUE_TENS[int_value]
      end
    elsif position == 3
      converted = PLACE_VALUE_HUNDREDS[int_value] if int_value != 0
    end

    converted
  end

  # Converts string to integer
  #
  def convert_to_integer(number)
    formatted = format_number(number)
    formatted = '0' if formatted == ''
    Integer(formatted)
  end

  # Removes unnecessary characters
  #
  def format_number(number)
    number
      .gsub(/,/, '')
      .gsub(/^0*/, '')
  end
end
