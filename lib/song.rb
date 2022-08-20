class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @@count +=1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
    end
    def self.count
        @@count
    end
    def name
        @name
    end
    def artist=(artist)
        @artist
    end
    def genre 
        @genre
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres 
        @@genres.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end

end
