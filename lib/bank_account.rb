class BankAccount
  attr_accessor :name, :status
  attr_reader :balance

  def initialize(name)
    @name = nil
    set_name(name)
    @balance = 1000
    @status = "open"
  end

  def set_name(name)
    raise NameChangeError, "Cannot change account holder name." if !@name==nil
    @name = name
  end

end

class NameChangeError < TypeError; end
