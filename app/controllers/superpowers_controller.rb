class SuperpowersController < ApplicationController
  def index
    @superpowers = Superpower.all
  end

 def new
    
    @superpowers = Superpower.new

  end

def show
  @superpowers = Superpower.find(params[:name, :id])
 end


def set_superpowers
      @superpowers = Superpower.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def superpower_params
      params.require(:superpower).permit(:name, :id)
    end


end
