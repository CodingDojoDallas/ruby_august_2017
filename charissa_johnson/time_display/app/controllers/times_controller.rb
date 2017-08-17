class TimesController < ApplicationController
  def main
  	@time = DateTime.now
  end
end
