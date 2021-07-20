class FortunesController < ApplicationController

  # app/controllers/fortunes_controller.rb

  def horoscopes

    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(:aries)
    @horoscope = this_zodiac.fetch(:horoscope)

    render({ :template => "fortunes.html.erb" })
  end

  # ...
end