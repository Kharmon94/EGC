class Contact < MailForm::Base
  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :description,   :validate => true

  def headers
    {
      :subject => "Support Message",
      :to => "expgcapital@gmail.com",
      :from => %("#{first_name}" <#{email}>)
    }
  end
end
