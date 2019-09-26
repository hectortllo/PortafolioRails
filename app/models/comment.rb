class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  #Cantidad de caracteres en el comentario
  validates :content, presence :true, length: {minimum:5, maximum:1000}
end
