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
end
