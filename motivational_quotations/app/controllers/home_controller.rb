class HomeController < ApplicationController
  def dashboard
    @person = params[:person] || "Albert Einstein"
    @options = Quote.get_options
    @quote = Quote.get_quote(@person)
    # @picture = Quote.get_picture_url(@person)
    @picture = get_pic_url
  end

  def get_pic_url
    url = "http://version1.api.memegenerator.net/Generators_Search?q=jimi+hendrix&pageIndex=0&pageSize=12"
    page = HTTParty.get(url).response.body
    r = JSON.parse page
    return r["result"][0]["imageUrl"]
  end
end
