class StringCalculator
  def add(numbers)
    numbers.split(/[,\n]/).map(&:to_i).inject(0, :+)
  end
end
