class Super_namesController < ApplicationController
  def index
    @super_names = Super_name.all
  end
end


# I created this controller but for some reason it isn't connecting