require 'pry'

class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(word_arr)
        initial_word_arr = @word.split('').sort
        anagrams = []
        word_arr.each do |e|
            if e.split('').sort == initial_word_arr
                anagrams.push(e)
            end
        end
        anagrams
    end 

end

new_word = Anagram.new("listen")
new_word.match(%w[enlists google inlets banana lisent])