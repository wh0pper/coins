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

  def pennies
    pennies = @cents_remaining
    @cents_remaining = 0
    pennies
  end

  def output
    qs = quarters()
    output = qs.to_s
    if qs>1
      output += ' quarters, '
    else
      output += ' quarter, '
    end
    ds = dimes()
    output += ds.to_s
    if ds>1
      output += ' dimes, '
    else
      output += ' dime, '
    end
    ns = nickels()
    output += ns.to_s
    if ns>1
      output += ' nickels, '
    else
      output += ' nickel, '
    end
    ps = pennies()
    output += ps.to_s
    if ps>1
      output += ' pennies'
    else
      output += ' penny'
    end
    output
  end
end
