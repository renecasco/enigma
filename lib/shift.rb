class Shift
  attr_reader :characters

  def initialize
    @characters = ("a".."z").to_a << " "
  end

  def the_keys(keys)
    keys.chars.map.with_index do |character, index|
      if index < 4
        (character += keys[index + 1]).to_i
      end
    end.compact
  end

  def the_offsets(date)
    date_string = date.strftime('%d') + date.strftime('%m') + date.strftime('%y')
    offsets = (date_string.to_i ** 2).to_s[-4..-1].chars
    offsets.map {|offset| offset.to_i}
  end



end
