class TranslationsController < ApplicationController
  def index
    @translation = Translation.new
    @translations = Translation.all
  end

  def create
    Translation.create(translation_params)
    redirect_to root_path
  end

  private

  def translation_params
    params.require(:translation).permit(:english, :russian)
  end
end
