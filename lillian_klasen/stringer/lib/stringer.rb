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
      if string.length < max_length
          return string
      else
          newString = string.split(//)
          newString = newString.slice(0...max_length)
          newString = newString.join("")
      return newString + "..."
    end
 end

 def self.replacify(org_string, replaced_string, replacement_string)
     org_array = org_string.split(' ')

     for index in 0...org_array.length
         if org_array[index] == replaced_string
            org_array[index] = replacement_string
         end
         index = index + 1
     end
      return org_array.join(" ")
 end

 def self.tokenize(string)
     array = string.split(" ")
     return array
 end

 def self.removify(original_string, remove_string)
     array = original_string.split(' ')

     for index in 0...array.length
         if array[index] == remove_string
            array.delete(array[index])
         end
         index = index + 1
     end
      return array.join(" ")
 end

end
