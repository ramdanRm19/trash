require 'rubygems'
require 'httparty'
#gem install httparty
#pkg install ruby
class Rest
    include HTTParty
    base_uri 'https://al-quran-8d642.firebaseio.com'

    def posts
      self.class.get('/data.json?print=pretty')
    end
end
rest = Rest.new
rest_posts = rest.posts

puts "           Program Daftar Surah Al-Quran by Hmei7"
puts "           program buat fanny"
puts "---------------------------------------------------------"
rest_posts.each do |post|
    puts "Nomor       : #{post['nomor']}"
    puts "Nama Surah  : #{post['nama']}"
    puts "Arti        : #{post['arti']}"
    puts "Jumlah Ayat : #{post['ayat']}"
    puts "Surah Ke    : #{post['urut']}"
    puts "Diturunkan  : #{post['type']}"
    puts "----------------------------------------------------------"
end
