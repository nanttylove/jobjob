# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
  def job_post_notification
    NotificationMailer.job_post_notification(User.first, Job.first).deliver_now
  end
end
