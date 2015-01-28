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
                                                                      "Beware of little expenses. A small leak will sink a great ship."],
                                                                      "Jimi Hendrix" => ["Knowledge speaks, but wisdom listens.",
                                                                                         "I used to live in a room full of mirrors; all I could see was me. I take my spirit and I crash my mirrors, now the whole world is here for me to see.",
                                                                                         "I've been imitated so well I've heard people copy my mistakes."]
  }

  PICTURES = {"Albert Einstein" => "http://content8.flixster.com/rtactor/42/23/42230_pro.jpg",
              "Victor Wooten" => "http://playcajon.org/wp-content/uploads/2014/03/wootenarticle.jpg",
              "Benjamin Franklin" => "http://www.npg.si.edu/exhibit/legacy/slideshow/gallery/album1/large/lgben.jpg",
              "Jimi Hendrix" => "http://i.telegraph.co.uk/multimedia/archive/01711/C-Jimi-Ladyland-po_1711987i.jpg"
  }


  attr_reader :quote, :picture
  def initialize(quote, picture)
    @quote = quote
    @picture = picture
  end

  def self.get_quote(string)
    Quote.new(QUOTES[string].sample, PICTURES[string])
  end

  def self.get_picture_url(string)
    PICTURES[string]
  end

  def self.get_options
    QUOTES.keys
  end
end
