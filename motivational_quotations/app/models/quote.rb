class Quote
  QUOTES = {
    "Albert Einstein" => ['Look deep into nature, and then you will understand everything better.',
                          'The true sign of intelligence is not knowledge but imagination.',
                          "Insanity: doing the same thing over and over again and expecting different results.",
                          "Only two things are infinite, the universe and human stupidity, and I'm not sure about the former.",
                          "Any man who can drive safely while kissing a pretty girl is simply not giving the kiss the attention it deserves."],
                          "Victor Wooten" => ['Never lose the groove in order to find a note.',
                                              'A child playing air-guitar plays no wrong notes.',
                                              "There is only one reason that you ever fail at anything...and that is because you eventually change your mind. That's it!...anything and everything you have ever decided to do, you have succeeded, or will succeed, at doing.",
                                              "It's time for you to take control of your Life and for you to accept that it is you who's in control."],
                                              "Benjamin Franklin" => ["Wine is constant proof that God loves us and loves to see us happy.",
                                                                      "Do not fear mistakes. You will know failure. Continue to reach out.",
                                                                      "Any fool can criticize, condemn and complain - and most fools do.",
                                                                      "Be at war with your vices, at peace with your neighbors, and let every new year find you a better man.",
                                                                      "Beware of little expenses. A small leak will sink a great ship."]
  }

  PICTURES = {"Albert Einstein" => "http://content8.flixster.com/rtactor/42/23/42230_pro.jpg",
              "Victor Wooten" => "http://playcajon.org/wp-content/uploads/2014/03/wootenarticle.jpg",
              "Benjamin Franklin" => "http://www.npg.si.edu/exhibit/legacy/slideshow/gallery/album1/large/lgben.jpg"
  }
  def self.get_quote(string)
    QUOTES[string].sample
  end

  def self.get_picture_url(string)
    PICTURES[string]
  end
end
