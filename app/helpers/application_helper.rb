module ApplicationHelper
  def current_announcements
    @current_announcements ||= Announcement.all
  end
end
