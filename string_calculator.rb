class StringCalculator
  def add(numbers)
    delimeter, numbers = extract_delimeter(numbers)
    delimeter_regexp = Regexp.new("[#{delimeter}\\n]")
    numbers.split(delimeter_regexp).map(&:to_i).inject(0, :+)
  end

  private
  def extract_delimeter(str)
    match = str.match Regexp.new('^//(.*)\n')
    if match.nil?
      [",", str]
    else
      [match[1], str[match[0].length..-1]]
    end
  end
end
