class Amount
  def initialize(amount)
    @amount = amount
  end

  def get_amount
    @amount
  end

  def get_cents
    @amount * 100
  end

  def get_coins
    new_amount = @amount * 100
    qtr = 0
    dime = 0
    nickel = 0
    penny = 0
    coins = []
    until (new_amount <= 0)
      if new_amount >= 25
        new_amount -= 25
        qtr += 1
      elsif new_amount >= 10
        new_amount -= 10
        dime += 1
      elsif new_amount >= 5
        new_amount -= 5
        nickel += 1
      elsif new_amount >= 1
        new_amount -= 1
        penny += 1
      end
    end
    puts qtr.to_s + " quarters, " + dime.to_s + " dimes, " + nickel.to_s + " nickels, " + penny.to_s + " pennies."
    qtr.to_s + " quarters, " + dime.to_s + " dimes, " + nickel.to_s + " nickels, " + penny.to_s + " pennies."
  end
end

print "Enter an amount of money in $: "
number = gets.chomp.to_f
new_amount = Amount.new(number)
puts "Processing..."
final = new_amount.get_coins
puts "Here is your number in coins: "
puts final
