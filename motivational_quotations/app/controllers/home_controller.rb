class HomeController < ApplicationController
  def dashboard
    @person = params[:person] || "Albert Einstein"
    @options = Quote.get_options
    @quote = Quote.get_quote(@person)
    @picture = Quote.get_picture_url(@person)
    # @picture = get_pic_url
    # @picture = make_meme_request
  end

  private def make_meme_request
    username = ENV["MEMEUSERNAME"]
    password = ENV["MEMEPASSWORD"]
    text0 = 'ask me how'
    text1 = 'to make api request'
    meme = "http://version1.api.memegenerator.net/Instance_Create?username=#{username}&password=#{password}&languageCode=en&generatorID=45&imageID=20&text0=#{text0}&text1=#{text1}"
    get_picture_url(meme)

  end

  private def get_picture_url(url)
    url = URI.encode(url)
    page = HTTParty.get(url).response.body
    r = JSON.parse page
    return r["result"]["instanceImageUrl"]
  end
end
