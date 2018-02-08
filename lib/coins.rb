#!/usr/bin/env ruby

class Coins
  # new lines in class block?
  def initialize(cents)
    @cents_remaining = cents.round
  end

  def quarters
    quarters = @cents_remaining/25
    @cents_remaining %= 25
    quarters
  end

  def dimes
    dimes = @cents_remaining/10
    @cents_remaining %= 10
    dimes
  end

  def nickels
    nickels = @cents_remaining/5
    @cents_remaining %= 5
    nickels
  end
end
