PERSIAN_NUMBER_MAP = {
  '۰' => '0',
  '۱' => '1',
  '۲' => '2',
  '۳' => '3',
  '۴' => '4',
  '۵' => '5',
  '۶' => '6',
  '۷' => '7',
  '۸' => '8',
  '۹' => '9',
  '.' => '.'
}.freeze

# Refer to:
# https://fa.wikipedia.org/wiki/%D9%86%D8%A7%D9%85_%D8%A7%D8%B9%D8%AF%D8%A7%D8%AF_%D8%A8%D8%B2%D8%B1%DA%AF
# https://en.wikipedia.org/wiki/Names_of_large_numbers
#
LARGE_NUMBERS_IN_PERSIAN = {
  0 => '',
  3 => 'هزار',
  6 => 'میلیون',
  9 => 'میلیارد',
  12 => 'بیلیون',
  15 => 'بیلیارد',
  18 => 'تریلیون',
  21 => 'تریلیارد',
  24 => 'کوآدریلیون',
  27 => 'کادریلیارد',
  30 => 'کوینتیلیون',
  33 => 'کوانتینیارد',
  36 => 'سکستیلیون',
  39 => 'سکستیلیارد',
  42 => 'سپتیلیون',
  45 => 'سپتیلیارد',
  48 => 'اکتیلیون',
  51 => 'اکتیلیارد',
  54 => 'نانیلیون',
  57 => 'نانیلیارد',
  60 => 'دسیلیون',
  63 => 'دسیلیارد',
  66 => 'آندسیلیون',
  69 => 'آندسیلیارد',
  72 => 'دودسیلیون',
  75 => 'دودسیلیارد',
  78 => 'تریدسیلیون',
  81 => 'تریدسیلیارد',
  84 => 'کوادردسیلیون',
  87 => 'کوادردسیلیارد',
  90 => 'کویندسیلیون',
  93 => 'کویندسیلیارد',
  96 => 'سیدسیلیون',
  99 => 'سیدسیلیارد'
}.freeze

PLACE_VALUE_ONES = {
  1 => 'یک',
  2 => 'دو',
  3 => 'سه',
  4 => 'چهار',
  5 => 'پنج',
  6 => 'شش',
  7 => 'هفت',
  8 => 'هشت',
  9 => 'نه'
}.freeze

PLACE_VALUE_TEENS = {
  1 => 'یازده',
  2 => 'دوازده',
  3 => 'سیزده',
  4 => 'چهارده',
  5 => 'پانزده',
  6 => 'شانزده',
  7 => 'هفده',
  8 => 'هجده',
  9 => 'نوزده'
}.freeze

PLACE_VALUE_TENS = {
  1 => 'ده',
  2 => 'بیست',
  3 => 'سی',
  4 => 'چهل',
  5 => 'پنجاه',
  6 => 'شصت',
  7 => 'هفتاد',
  8 => 'هشتاد',
  9 => 'نود'
}.freeze

PLACE_VALUE_HUNDREDS = {
  1 => 'صد',
  2 => 'دویست',
  3 => 'سیصد',
  4 => 'چهارصد',
  5 => 'پانصد',
  6 => 'ششصد',
  7 => 'هفتصد',
  8 => 'هشتصد',
  9 => 'نهصد'
}.freeze
