class Announcement < ActiveRecord::Base
  
  scope :between_now, where("starts_at <= ? AND ends_at >= ?", Time.now, Time.now)
  
  def self.current_announcements(hide_time)
    with_exclusive_scope(Announcement.between_now) do
      if hide_time.nil?
        #
      else
        #
      end
    end
  end
  
  
end
