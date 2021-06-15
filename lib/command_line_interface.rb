require 'encrypt'
require 'decrypt'
require 'enigma'
require 'date'
require 'shifts'

class CommandLineInterface
  attr_reader :user_input,
              :output,
              :message

  def initizlize
    @message = File.read('encrypt').chomp
    @user_input = argv
    @output = argv
  end

  def welcome
    puts 'Hello, I\'m glad you made it but we don\'t have much time. '
    puts 'When ever you\'re ready, type in the message you would like to have encrypted'
    print '>  '
    @message(gets.chomp)
  end

  def begin_encryption
  end 
end
