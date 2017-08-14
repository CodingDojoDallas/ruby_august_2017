require "stringer/version"

module Stringer
  def self.spacify *strings
        string = []
        strings.each do |s|
            string << s
        end
        string.join(" ")
  end

  def self.minify(string, max_length)
  	string[0..max_length].gsub(/\s\w+\s*$/, '...')
  end

  def self.replacify (string, word, replace) 
    string = string.split(" ")

    string.map! do |elem| 
      if elem == word
        replace
      else
        elem
      end
    end

    string.join(" ")
  end

  def self.tokenize string
    string.split(" ")
  end

  def self.removify string, word
    string = string.split(" ")
    string.reject! { |elem| elem == word }
    string.join(" ")
  end
end