class ExamplesController < ApplicationController
  def main
    @date = Time.now
    @date = @date.to_formatted_s(:long)
    return render 'main'
  end
end
