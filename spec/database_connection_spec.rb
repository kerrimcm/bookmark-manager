require 'database_connection'

describe DatabaseConnection do 

  context '#setup' do
    it 'sets up a connection to the database using PG' do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')

      DatabaseConnection.setup('bookmark_manager_test')
    end 
  end 
end 