FactoryGirl.define do
  factory :valid_email, class: Spree::MailToFriend do
    host "localhost"
    subject "email to friend testing specs"
    sender_name "Ryan"
    sender_email "ryan@spreecommerce.com"
    recipient_name  "test_user"
    recipient_email { sender_email }
    message "Hello there!"
    recipients  { sender_email}
    invalid_recipients ""
    hide_recipients { sender_email }
  end
end
