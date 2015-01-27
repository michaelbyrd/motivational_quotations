class HomeController < ApplicationController
  def dashboard
    @person = params[:person] || "Albert Einstein"
    @quote = Quote.get_quote(@person)
  end
end
