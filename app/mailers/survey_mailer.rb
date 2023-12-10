class SurveyMailer < ApplicationMailer
    def submission_success(feedback)
      @feedback = feedback
      mail(to: @feedback.email, subject: 'iPhone 13 Survey Submission Successful')
    end
end
  