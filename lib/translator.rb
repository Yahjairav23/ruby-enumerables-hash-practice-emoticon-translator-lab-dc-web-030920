# require modules here
require 'pry'
require 'yaml'

def load_library(emoticons_file)
  library = YAML.load_file(emoticons_file)
  # binding.pry
  emoticon_library = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticon|
    emoticon_library["get_meaning"][emoticon[1]] = meaning
    emoticon_library["get_emoticon"][emoticon[0]] = emoticon[1]
  end 
  emoticon_library
end

def get_japanese_emoticon(emoticons_file, emoticon)
  emoticon_library = load_library(emoticons_file)
  
  emoticon_library["get_emoticon"][emoticon]
  
end

def get_english_meaning
  # code goes here
end