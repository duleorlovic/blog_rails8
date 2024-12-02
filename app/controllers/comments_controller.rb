class CommentsController < ApplicationController
  def create
    @post = Post.find params[:post_id]
    @post.comments.create! params.expect(comment: [:content])
    redirect_to @post
  end
end
