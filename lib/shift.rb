class Shift
  attr_reader :characters

  def initialize
    @characters = ("a".."z").to_a << " "
  end

  def the_keys(number)
    number.chars.map.with_index do |character, index|
      (character += number[index + 1]).to_i if index < 4
    end.compact
  end

  def the_offsets(date)
    date_string = date.strftime('%d') + date.strftime('%m') + date.strftime('%y')
    offsets = (date_string.to_i ** 2).to_s[-4..-1].chars
    offsets.map {|offset| offset.to_i}
  end

  def final_shift(number, date)
    keys = the_keys(number)
    offsets = the_offsets(date)
    keys.zip(offsets).map {|numbers| numbers.sum}
  end


end