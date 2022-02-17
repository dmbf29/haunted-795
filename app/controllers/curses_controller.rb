class CursesController < ApplicationController
  def new
    @monster = Monster.find(params[:monster_id])
    @curse = Curse.new
    # @powers = Power.order(name: :asc)
    # @powers = @monster.powers
    @powers = Power.where.not(id: @monster.powers).order(name: :asc)
  end

  def create
    @monster = Monster.find(params[:monster_id])
    @curse = Curse.new(curse_params)
    @curse.monster = @monster
    if @curse.save
      redirect_to haunted_house_path(@monster.haunted_house)
    else
      render :new
    end
  end

  private

  def curse_params
    params.require(:curse).permit(:power_id)
  end
end
