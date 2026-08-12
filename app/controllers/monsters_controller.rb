class MonstersController < ApplicationController
  # /houses/1/monsters/new
  # def new
  #   @monster = Monster.new
  #   @house = House.find(params[:house_id])
  # end

  # FORM -> post /houses/1/monsters
  def create
    @house = House.find(params[:house_id])
    @monster = Monster.new(monster_params)
    @monster.house = @house
    if @monster.save
      redirect_to house_path(@house)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @monster = Monster.find(params[:id])
    @monster.destroy
    redirect_to house_path(@monster.house), status: :see_other
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :image_url)
  end
end
