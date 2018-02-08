#!/usr/bin/env ruby
require('pry')

class Coins
  # new lines in class block?
  def initialize(cents)
    @cents_remaining = cents.round
  end

  def quarters
    qs = @cents_remaining/25
    @cents_remaining %= 25
    qs
  end

  def dimes
    ds = @cents_remaining/10
    @cents_remaining %= 10
    ds
  end

  def nickels
    ns = @cents_remaining/5
    @cents_remaining %= 5
    ns
  end

  def pennies
    ps = @cents_remaining
    @cents_remaining = 0
    ps
  end

  def output
    binding.pry
    qs = quarters()
    output = qs.to_s
    binding.pry
    if qs>1
      output += ' quarters, '
    else
      output += ' quarter, '
    end
    ds = dimes()
    output += ds.to_s
    binding.pry
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
