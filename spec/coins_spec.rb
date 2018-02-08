require('rspec')
require('coins')
# require('pry')

# no describe class?
describe('Coins') do
  describe('#initialize') do
    it ('rounds any float input to integer') do
      coins = Coins.new(50.5)
      expect(coins.quarters()).to(eq(2))
    end
  end

  coins = Coins.new(92)
  describe('#quarters') do
    it ('returns number of quarters in total amount') do
      expect(coins.quarters()).to(eq(3))
    end
  end

  describe('#dimes') do
    it ('returns number of dimes in total amount') do
      expect(coins.dimes()).to(eq(1))
    end
  end

  describe('#nickels') do
    it ('returns number of nickels in total amount') do
      expect(coins.nickels()).to(eq(1))
    end
  end

  # describe('#pennies') do
  #   it ('returns number of pennies in total amount') do
  #     coins = Coins.new(75)
  #     expect(coins.quarters()).to(eq(3))
  #   end
  # end
end
