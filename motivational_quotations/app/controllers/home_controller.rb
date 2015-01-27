class HomeController < ApplicationController
  def dashboard
    @mood = params[:mood_selector]
  end
end
