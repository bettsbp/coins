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
    new_amount = self.get_cents
    qtrs = 0
    totalArray = []
    if new_amount >= 25
      qtrs = (new_amount / 25).floor
      left_over_after_qtrs = new_amount % 25
    elsif new_amount < 25
      if left_over_after_qtrs >= 10
        dimes = (left_over_after_qtrs / 10).floor
        left_over_after_dimes = left_over_after_qtrs % 10
      end
    end
    totalArray.push(qtrs)
    totalArray.push(dimes)
  end

  def add_coins
    finalArray = []
    finalArray.push(@qtr)
    finalArray.push(@dimes)
  end
end
