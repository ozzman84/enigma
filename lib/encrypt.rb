class Encrypt
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def char
    ("a".."z").to_a << " "
  end

  def message_values
    @message.downcase.split('')
  end
end
