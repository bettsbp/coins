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
end
