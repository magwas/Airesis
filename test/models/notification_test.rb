require 'minitest/autorun'

class NotificationTest < ActiveSupport::TestCase

    test "we have notification" do
        nc = NotificationCategory.create()
        nt = NotificationType.create(notification_category: nc)
        notification = Notification.create(notification_type: nt)
        #, url: group_blog_post_url(group, blog_post), data: data)
        assert notification.notification_type == nt
    end
end
