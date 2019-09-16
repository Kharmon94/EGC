class SignalUser < MailForm::Base
  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone_number,   :validate => true
  attribute :telegram_username,   :validate => true
  
  def headers
    {
      :subject => "New Signal User Request!",
      :to => "thronetechnology@gmail.com",
      :from => %("#{first_name}" <#{email}>)
    }
  end

end
