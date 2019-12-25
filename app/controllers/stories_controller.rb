class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
  end

  def index
    @story = Story.order(updated_at: :desc).limit(1).first
    redirect_to story_path(@story)
  end

  def update
    @story = Story.find(params[:id])
    @story.increment!(:claps)
  end
end
