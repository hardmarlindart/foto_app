class Pessoa < ActiveRecord::Base
	has_many :imagems, dependent: :destroy
	accepts_attachments_for :imagems, attachment: :file, append: true
end
