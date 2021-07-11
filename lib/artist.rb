

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_song(song)
        song.artist = self  
        # telling the song that it belongs to that artist
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.all
        @@all
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        # telling the song that it belongs to that artist
    end

    def self.song_count
        Song.all.count
    end

end
