class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def registration_confirmation(customer)
  	mail(:to => customer.email, :subject =>"Registration Confirmation")
  end
end
