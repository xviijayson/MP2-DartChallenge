//
class Song {         //creating a class named Song
  String title;
  String artist;
  double duration;

  
  Song(this.title, this.artist, this.duration);

  
  @override
  String toString() {
    return '$title by $artist - $duration min';
  }
}


class Playlist {            //creating a second class named playlist
  String name;
  List<Song> songs = [];

  
  Playlist(this.name);

  
  void addSong(Song song) {
    songs.add(song);
  }

           // THIS CODE CALCULATE THE SONG DURATION OF THE PLAYLIST
  double totalDuration() {
    return songs.fold(0.0, (sum, song) => sum + song.duration);
  }

  
  @override
  String toString() {
    String songsStr = songs.map((song) => song.toString()).join('\n');
    return 'Playlist: $name\nSongs:\n$songsStr\nTotal Duration: ${totalDuration()} min';
  }
}


class MusicFestival {
  String name;
  List<Playlist> playlists = [];

  
  MusicFestival(this.name);

                                           //creating a method to add a playlist
  void addPlaylist(Playlist playlist) {
    playlists.add(playlist);
  }

                                   //THIS CALCULATES ALL THE TOTAL DURATION OF ALL SONGS IN FESTIVAL
  double totalFestivalDuration() {
    return playlists.fold(0.0, (sum, playlist) => sum + playlist.totalDuration());
  }

  
  @override
  String toString() {
    String playlistsStr = playlists.map((playlist) => playlist.toString()).join('\n\n');
    return 'Music Festival: $name\n\nStages:\n$playlistsStr\n\nTotal Festival Duration: ${totalFestivalDuration()} min';
  }
}

// this time i created a main and enlist all the songs 
void main() {
  
  Song song1 = Song('Undecided', 'Chris Brown', 4.5);
  Song song2 = Song('Under The Influence', 'Chris Brown', 4.0);
  Song song3 = Song('Wet The Bed', 'Chris Brown', 4.2);
  Song song4 = Song('Enchanted', 'Taylor Swift', 4.8);
  Song song5 = Song('Light Switch', 'Charlie Puth', 3.5);
  Song song6 = Song('Mahika', 'Adie', 3.7);
  Song song7 = Song('Kung Wala Ka', 'Hale', 3.9);
  Song song8 = Song('Sining', 'Dionela', 4.1);
  Song song9 = Song('Museo', 'Eliza Maturan', 4.5);
  Song song10 = Song('Huli Na', 'Yuri Dope', 4.4);

  // Create playlists 
  Playlist playlist1 = Playlist('International Music');
  Playlist playlist2 = Playlist('OPM SONGS');
  Playlist playlist3 = Playlist('TOP MUSIC OF THE WEEK');

  // Add songs to playlists
  playlist1.addSong(song1);
  playlist1.addSong(song2);
  playlist1.addSong(song3);
  playlist1.addSong(song4);
  playlist1.addSong(song5);

  playlist2.addSong(song6);
  playlist2.addSong(song7);
  playlist2.addSong(song8);
  playlist2.addSong(song9);
  playlist2.addSong(song10);

  playlist3.addSong(song1);
  playlist3.addSong(song3);
  playlist3.addSong(song5);
  playlist3.addSong(song7);
  playlist3.addSong(song9);

  
  MusicFestival festival = MusicFestival('Spotify Music Fest');
  festival.addPlaylist(playlist1);
  festival.addPlaylist(playlist2);
  festival.addPlaylist(playlist3);

  
  print(festival);
}
