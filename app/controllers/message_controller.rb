class MessageController < ApplicationController

  def create
    @message = Message.new(send_params)

    @message.user = current_user

    @message.save
    SubscriptionJob.perform_later(@message, current_user)
  end


  private

  def send_params
    params.require(:message).permit(:content, :user_id)
  end

end
