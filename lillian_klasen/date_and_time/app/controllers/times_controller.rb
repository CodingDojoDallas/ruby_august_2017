class TimesController < ApplicationController
  def main
      @date = Time.new.strftime("%B %d, %Y")
      @time = Time.new.strftime("%I:%M:%S")
  end
end
