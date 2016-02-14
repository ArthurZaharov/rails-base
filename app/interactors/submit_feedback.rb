class SubmitFeedback
  include Interactor::Organizer

  organize SendFeedbackEmail, SendHipChatNotification
end
