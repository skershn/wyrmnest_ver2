class TopicsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @topic = Topic.create(topic_params)
    redirect_to root_path
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :content)
  end
end
