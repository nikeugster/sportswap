class StatusUpdateChannel < ApplicationCable::Channel
  def subscribed
    stream_from "StatusUpdateChannel"
  end

  def unsubscribed
    stop_all_streams
  end
end
