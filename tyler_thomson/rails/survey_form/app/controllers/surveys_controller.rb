class SurveysController < ApplicationController
  def new
    session[:count] ||=0
  end

  def create
    session[:count] += 1
    session[:survey] = params[:survey]
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now."
    return redirect_to '/surveys/show'
  end

  def show
    @survey = session[:survey]
  end

  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment)
    end
end
