class Imagem < ActiveRecord::Base
  belongs_to :pessoa
  attachment :file
end
