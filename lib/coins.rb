#!/usr/bin/env ruby

class Coins
  def initialize(cents)
    @cents = cents
  end

  def quarters
    @cents/25  
  end
end
