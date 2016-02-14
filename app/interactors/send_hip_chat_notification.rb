class SendHipChatNotification
  include Interactor

  delegate :feedback, to: :context

  def call
    HipChatClient.new.send_feedback(feedback)
  end
end
