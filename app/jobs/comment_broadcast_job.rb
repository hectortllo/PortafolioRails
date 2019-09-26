class CommentBroadcastJob < ApplicationJob
    #Acá irán toda la lista de comentarios. Los ordena en como vayan llegando, es una lista
    queue_as :default 

    def perform(comment)
        #Iniciar el broadcast
        ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
    end

    private
    def render_comment(comment)
        #Llamar a CommentsController para saber qué renderizar
        CommentsController.render partial: 'comments/comment', locals: { comment: comment }
    end
end