#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "- help: displays this help message"
  puts "- list: displays a list of songs you can play"
  puts "- play: lets you choose a song to play"
  puts "- exit: exits this program"
end



def list(my_songs)
  my_songs.each do |k, v|
    puts k
  end
end


def play(my_songs)
  puts "Please enter a song name:"
  input = gets.chomp
  if my_songs.keys.include?(input)
    puts "Playing #{input}"
    my_songs.each do |song, path|
      if song == input
        open path # <-- It's not opening up the mp3 file though :(
      end
    end
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye."
end

def run(my_songs)
  help
  input = ""
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "help"
      help
    elsif input == "list"
      list(my_songs)
    elsif input == "play"
       play(my_songs)
    elsif input == "exit"
      exit_jukebox
    else
      puts "Invalid command"
    end
  end
end
