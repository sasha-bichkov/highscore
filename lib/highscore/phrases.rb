module Highscore

  # phrases that were found in content
  #
  class Phrases
    # find phrases in a piece of content
    #
    # @param content String
    # @param wordlist Highscore::Wordlist
    # @param pattern Regex
    # @return Highscore::Phrases
    def self.find_phrases content, phrases=[]
      phrases.map { |phrase| content.to_s.scan(phrase) }.sort.flatten
    end

  end
end