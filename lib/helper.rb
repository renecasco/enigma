class Helper

  def random_key
    Array.new(5){|index|rand(0..9)}.join
  end

  def date_conversion(date)
    date.strftime('%d%m%y')
  end

end
