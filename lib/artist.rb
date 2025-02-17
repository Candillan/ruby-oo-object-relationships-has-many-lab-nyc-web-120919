class Artist
    attr_accessor :name
    @@song_count = 0
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        add_song(Song.new(song_name))
    end

    def self.incrementor
        @@song_count += 1
    end

    def self.song_count
        @@song_count
    end
end
