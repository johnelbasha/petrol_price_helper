RSpec.describe Site do
  describe 'class methods' do
    decscribe '.within_price_range' do
      let(:site1) { Site.create(name: 'Site 1', price: 1.00) }
      let(:site1) { Site.create(name: 'Site 2', price: 2.00) }
      let(:site1) { Site.create(name: 'Site 3', price: 3.00) }

      it 'fetches sites within the given price range' do
        lower_price_limt = 0.90
        upper_price_limit = 2.99
        
        expect(Site.within_price_range(lower_price_limt, upper_price_limit)).to contain_exactly(site1, site2)
      end
    end
  end
end