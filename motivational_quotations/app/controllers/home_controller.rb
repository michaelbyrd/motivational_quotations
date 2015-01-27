class HomeController < ApplicationController
  def dashboard
    @person = params[:person] || "Albert Einstein"
    @quote = Quote.get_quote(@person)
    @picture = Quote.get_picture_url(@person)
  end
end
