require 'pg'

class Bookmark
  attr_reader :bookmarks

  def self.all 
    begin
      if ENV['ENVIRONMENT'] = 'test'
        con = PG.connect :dbname => 'bookmark_manager_test'
      else
        con = PG.connect :dbname => 'bookmark_manager'
      end 
      rs = con.exec "SELECT * FROM bookmarks"
      rs.map { |bookmark| bookmark['url'] }
    rescue PG::Error => e
      puts e.message 
    ensure
      rs.clear if rs
      con.close if con 
    end
  end
end

