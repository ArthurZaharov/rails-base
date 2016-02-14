class SendFeedbackEmail
  include Interactor

  delegate :feedback, to: :context

  def call
    ApplicationMailer.feedback(feedback).deliver_now!
  end
end
