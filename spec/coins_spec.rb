require 'rspec'
require 'coins'
require 'pry'

describe("Coins#count") do
  it("takes .75 and returns .75") do
    amount = Amount.new(0.75)
    expect(amount.get_amount).to(eq(0.75))
  end
  it("take .75 and returns 75") do
    amount = Amount.new(0.75)
    expect(amount.get_cents).to(eq(75))
  end
  it("takes .75 and returns [3,0,0,0] using get_coins") do
    amount = Amount.new(0.75)
    expect(amount.get_coins).to(eq("3 quarters, 0 dimes, 0 nickels, 0 pennies."))
  end
  it("takes .85 and returns 3,1,0,0 using get_coins") do
    amount = Amount.new(0.85)
    expect(amount.get_coins).to(eq("3 quarters, 1 dimes, 0 nickels, 0 pennies."))
  end
  it("takes .10 and returns 0, 1 using get_coins") do
    amount = Amount.new(0.10)
    expect(amount.get_coins).to(eq("0 quarters, 1 dimes, 0 nickels, 0 pennies."))
  end
  it ("takes 0.01 and returns 0, 0, 0, 1") do
    amount = Amount.new(0.01)
    expect(amount.get_coins).to(eq("0 quarters, 0 dimes, 0 nickels, 1 pennies."))
  end
  it ("takes 7382.38 and returns the value") do
    amount = Amount.new(7382.38)
    expect(amount.get_coins).to(eq("29529 quarters, 1 dimes, 0 nickels, 3 pennies."))
  end
  it ("takes 2.91 and returns the value") do
    amount = Amount.new(2.91)
    expect(amount.get_coins).to(eq("11 quarters, 1 dimes, 1 nickels, 1 pennies."))
  end
end
