class ApplicationMailer < ActionMailer::Base
  
  def contact_mailer(params, sent_at = Time.now)
      recipients    "support@cube2media.com"
      from          "Cube2 Contact Mailer"
      subject       "Cube2 Contact Submission"
      body          :contact => params, :sent_on => sent_at
  end
  
  def project_mailer(params, sent_at = Time.now)
        recipients    "bob@cube2media.com"
        from          "Cube2 Project Mailer"
        subject       "Cube2 Project Submission"
        body          :project => params, :sent_on => sent_at
    end

end
