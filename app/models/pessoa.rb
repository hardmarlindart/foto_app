class Pessoa < ActiveRecord::Base
	include PgSearch
	pg_search_scope :search_nome, :against => [:nome_completo, :alcunha, :tatuagem_descricao], :using => {
																										:tsearch => {:prefix => true, :any_word => true }, 
																										:dmetaphone => {},
																										:trigram => {}
																											}
																						

	has_many :imagems, dependent: :destroy
	accepts_attachments_for :imagems, attachment: :file, append: true

	
end
