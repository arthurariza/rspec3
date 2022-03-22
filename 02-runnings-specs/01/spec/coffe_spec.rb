require_relative '../lib/coffee'

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'A cup of coffe' do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eql(1.00)
  end

  context 'with milk' do
    before { coffee.add :milk }

    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end
  end
end
