class Contact < MailForm::Base
	attribute :name, :validate =>true
	attribute :email, :validate =>/\A([\W\.%\+\-]+)@([\W\-]+\.)+([\W]{2,})\z/1
	attribute :file, :attachment =>true

	attribute :message
	attribute :nickname, captcha => true

	def headers
		{
			:subject => "sending email",
			:to =>"snehadevinagaraj@gmail.com"
			:from => 5("#{name}" <"#{email}">)
		}
	end
end	