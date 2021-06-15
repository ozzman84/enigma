class Decryption
  attr_reader :encrypted_message

  def initialize(encrypted_message)
    @encrypted_message = encrypted_message
  end

  def char
    ("a".."z").to_a << " "
  end
end
