require 'database_connection'

describe DatabaseConnection do 

  context '#setup' do
    it { is_expected.to respond_to(:setup).with(1).argument }
  end 
end 