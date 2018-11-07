class Helper

  def random_key
    Array.new(5){|index|rand(0..9)}.join
  end

end
