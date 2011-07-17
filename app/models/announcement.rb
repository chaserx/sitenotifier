class Announcement < ActiveRecord::Base
  
  scope :between_now, where("starts_at <= ? AND ends_at >= ?", Time.now, Time.now)
  
  def self.current_announcements(hide_time)

      if hide_time.nil?
        Announcement.between_now.all
      else
        Announcement.where("updated_at > ? OR starts_at > ?", hide_time, hide_time).all
      end

  end
  
  
end
