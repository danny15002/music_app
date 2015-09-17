module TracksHelper
   include ERB::Util

def ugly_lyrics
  lyrics = self.lyrics
  lyrics = lyrics.split("\n")
  ugly_string = ""
  lyrics.each do |line|
    ugly_string += "♫ #{line}\n"
    # ugly_string += "<pre> ♫ #{line} </pre> <br>".html_safe
  end
  ugly_string.html_safe
end

end
