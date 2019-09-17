class Blog < ApplicationRecord
    enum status: { draft: 0, published: 1 }
    extend FriendlyId
    friendly_id :title, use: :slugged

    #No va a dejar crear un blog sin que tena título y body
    validates_presence_of :title, :body

    belongs_to :topic
end
