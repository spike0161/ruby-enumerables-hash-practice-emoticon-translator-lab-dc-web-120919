require "pry"
require 'yaml'


def load_library(file_path)
  file = File.read(file_path)
  emoticons = YAML.load(file)
  get_elements =  {"get_meaning" => {}, "get_emoticon" => {}}
end



def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  emoji = emoticons.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]
end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
# binding.pry
  emoji = emoticons.find {|name, faces| faces[1] == emoticon }

  emoji == nil ? "Sorry, that emoticon was not found" : emoji[0]
  # 
end