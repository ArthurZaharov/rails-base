class HipChatClient
  attr_reader :room, :auth_token
  private :room, :auth_token

  def initialize
    @room = ENV["HIPCHAT_ROOM_ID"]
    @auth_token = ENV["HIPCHAT_AUTH_TOKEN"]
  end

  def send_feedback(feedback)
    feedback_room.send(feedback.name, feedback.message)
  end

  private

  def feedback_room
    connection[room]
  end

  def connection
    HipChat::Client.new(auth_token, api_version: "v2")
  end
end
