Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  def sandwich
    @sandwich ||= Sandwich.new('delicious', [])
  end

  it 'is delicious' do
    taste = sandwich.taste

    expect(taste).to eq('delicious')
  end

  it 'lets me add topping' do
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
    expect(toppings).to include 'cheese'
  end
end
