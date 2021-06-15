class Encrypt
  attr_reader :message

  def initialize(message)
    @message = message
    @shift_index = [10, 20, 0, 10]
  end

  def char
    ("a".."z").to_a << " "
  end

  def message_arr
    @message.downcase.split('')
  end

  def index
    message_arr.map do |letter|
      char.rindex(letter)
    end
  end

  def new_index
    arr = index.zip(@shift_index.cycle)
  end

  def sum_index
    new_index.map do |x|
      x.reduce(:+)
    end
  end
end
