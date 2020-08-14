require 'pry'

class BankAccount
  attr_accessor :status
  attr_reader :balance, :name

  def initialize(name)
    @name = name=(name)
    @balance = 1000
    @status = "open"
  end

  def name=(name)
    raise NameChangeError, "Cannot change account holder name." if !@name.is frozen?
    @name = name
    @name.freeze!
  end
end

class NameChangeError < TypeError; end
