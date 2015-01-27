class HomeController < ApplicationController
  def dashboard
    @person = params[:person] || "Albert Einstein"
    @options = Quote.get_options
    @quote = Quote.get_quote(@person)
    @picture = Quote.get_picture_url(@person)
  end
end
