class RecordAlbums
  attr_reader :artist_name, :album_name, :songs, :current_song
    def initialize(artist_name,album_name,songs=[''] )
      @artist_name , @album_name, @songs = artist_name , album_name ,songs
      @current_song= songs[0]
    end

    def next_song
      if @songs.index(current_song) == @songs.length-1
        @current_song = @songs[0]
      else
        @current_song = @songs[@songs.index(current_song)+1]
      end
    end
    def previous_song
      if @songs.index(current_song) == 0
        @current_song = @songs[@songs.length -1]
      else
        @current_song = @songs[@songs.index(current_song)-1]
      end
    end
end


