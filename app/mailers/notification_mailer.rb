class NotificationMailer < ApplicationMailer
  default from: "nanttylove@gmail.com"

  def job_post_notification(user, job)
    @user = user
    @job = job

    mail( to: @user.email, subject: "งานที่คุณอาจสนใจ #{@job.position}")
  end

  def job_send_notification(resume, email, jobposition, joborganization)
    @resume = resume
    @email = email
    @jobposition = jobposition
    @joborganization = joborganization

    mail( to: @email, subject: "สมัครงานตำแหน่ง #{@jobposition}")
  end
end
