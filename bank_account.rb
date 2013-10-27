class BankAccount
  class << self
=begin
class methods work on a class, rather than an instance of a class
they are prepended by self
self.create_for all allows the class to do two things
	1. create an instance of the class
	2. store (and thus track) that instance bank account in an array
	3. ||= Conditional Assignment Operator: Assigns a value to a variable
	if it doesn't already exist.     	
=end	
  def create_for(first_name, last_name)
    @accounts ||= []
    @accounts << BankAccount.new(first_name, last_name)
  end

#call find method to search for a match in the @accounts array
#call .full instance method on an instance of the class array and compare to the interpolated 
#name arguments 
  def find_for(first_name, last_name)
  	@accounts.find { |account| account.full_name == "#{first_name} #{last_name}" }
  end
end

#end class methods
#begin instance methods

#initiatlize is the method that gets called when you instantiate your classes, i.e.,
#create an instance of the class.
  def initialize(first_name, last_name)
  	@balance = 0
	@first_name = first_name
	@last_name = last_name
  end

  def full_name
  	"#{@first_name} #{@last_name}"
  end

  def deposit(amount)
	@balance += amount
  end

  def withdrawl(amount)
	@balance -= amount
  end

  def balance
  	@balance
  end

end

#here we call the class method
BankAccount.create_for("Jasper", "Poo")
#here we call an instance method
bank_account = BankAccount.new("Jasper", "Poo")
deposit(1000)
withdrawl(100)
#The return value of a method is the last line of the method unless explicitly returned.




