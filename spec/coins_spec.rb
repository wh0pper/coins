require('rspec')
require('coins')
# require('pry')

# no describe class?
describe ('#Coins initialize')
  it ('rounds any float input to integer') do
    coins = Coins.new(50.5)
    expect(coins.quarters())to(eq(2))
  end
end

describe ('#quarters') do
  it ('returns number of quarters in total amount') do
    coins = Coins.new(75)
    expect(coins.quarters()).to(eq(3))
  end
end
