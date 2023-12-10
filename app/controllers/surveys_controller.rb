# app/controllers/surveys_controller.rb
class SurveysController < ApplicationController
  def index
    @questions = Question.all
    @feedback = Feedback.new
    @questions.each { |question| @feedback.responses.build(question: question) }
  end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.save
      @feedback.reload

      # Add code to send email here
      SurveyMailer.submission_success(@feedback).deliver_now

      flash[:success] = 'Thank you for your feedback!'
      redirect_to root_path
    else
      flash.now[:error] = 'Duplicate email. You have already submitted feedback.'
      render :index
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, responses_attributes: [:id, :question_id, :rating])
  end
end
