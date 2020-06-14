require './lib/persian_numbers.rb'

file_content = File.open('demo/demo.template').read
numbers = ''
(1..10).each do |index|
  number = rand(1..10_000_000_000_000)
  converted = Conversion.new(number: number).translate_to_words
  formatted_number = number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  numbers <<
    "\t\t\t\t\t<tr>"\
    "\t\t\t\t\t\t<th scope='row'>#{index}</th>"\
    "\t\t\t\t\t\t<td>#{formatted_number}</td>"\
    "\t\t\t\t\t\t<td class='rtl'>#{converted}</td>"\
    "\t\t\t\t\t</tr>"
end
file_content.gsub!(/__NUMBERS__/, numbers)
File.write('demo/demo.html', file_content)

`open demo/demo.html`
