class QwwwotesController < ApplicationController

  def index
    @qwwwotes = Qwwwote.all
  end

  def show
    @qwwwote = Qwwwote.find(params[:id])
  end

  def new
    @qwwwote = Qwwwote.new
  end

  def edit
    @qwwwote = Qwwwote.find(params[:id])
  end

  def create
    @qwwwote = Qwwwote.new(qwwwote_params)
    if @qwwwote.save
      redirect_to @qwwwote
    else
      render 'new'
    end
  end

  def update
    @qwwwote = Qwwwote.find(params[:id])
    if @qwwwote.update(qwwwote_params)
      redirect_to @qwwwote
    else
      render 'edit'
    end
  end

  def destroy
    @qwwwote = Qwwwote.find(params[:id])
    @qwwwote.destroy

    redirect_to qwwwotes_path
  end

  private
    def qwwwote_params
      params.require(:qwwwote).permit(
      :quote,
      :author,
      :source,
      :source_url,
      :date,
      :tags,
      :notes)
    end
end
