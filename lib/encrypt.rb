class Encrypt
  attr_reader :message

  def initialize(message)
    @message = message
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
end
