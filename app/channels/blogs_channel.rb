class BlogsChannel < ApplicationCable::Channel
    def subscribed
        #Se le dice desde qué blog se está haciendo el comentario
        stream_from "blogs_#{params['blog_id']}_channel"
    end

    def unsubscribed
    end

    def send_comment(data)
        current_user.comments.create!(content: data['comment'], blog_id: data['blog_id'])
    end
end