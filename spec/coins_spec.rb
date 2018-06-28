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
  it("takes .75 and returns 3 using get_coins") do
    amount = Amount.new(0.75)
    expect(amount.get_coins).to(eq([3, 0]))
  end
  it("takes .85 and returns 3 using get_coins") do
    amount = Amount.new(0.85)
    expect(amount.get_coins).to(eq([3, 1]))
  end
end
