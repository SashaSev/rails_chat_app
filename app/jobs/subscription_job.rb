class SubscriptionJob < ApplicationJob
  queue_as :default

  def perform(message, user_id)
    ActionCable.server.broadcast "message_#{user_id}", {
        message: message, user_id: user_id
    }
    # Do something later
  end
end
