class Super_namesController < ApplicationController
 

#   def index
#     @super_names = Super_name.all
#   end

#   #  def 
#   #   @super_names = Super_name.all
#   # end

#  def new
    
#     @super_names = Super_name.new

#   end

# def show
#   @super_names = Super_name.find(params[:id])
#  end


# end


# I created this controller but for some reason it isn't connecting

# Below this line is code from the previous Flatiron challenge doc

 def index
    @super_names = Super_name.all
  end

  # GET /supernames/1
  # GET /supernames/1.json
  def show
  end

  # GET /supernames/new
  def new
    @super_name = Super_name.new
  end

  # GET /supernames/1/edit
  def edit
  end

  # POST /supernames
  # POST /supernames.json
  def create
    @super_name = Super_name.new(supername_params)

    respond_to do |format|
      if @super_name.save
        format.html { redirect_to @super_name, notice: 'Supername was successfully created.' }
        format.json { render :show, status: :created, location: @super_name }
      else
        format.html { render :new }
        format.json { render json: @super_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supernames/1
  # PATCH/PUT /supernames/1.json
  def update
    respond_to do |format|
      if @super_name.update(supername_params)
        format.html { redirect_to @super_name, notice: 'Supername was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_name }
      else
        format.html { render :edit }
        format.json { render json: @super_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supernames/1
  # DELETE /supernames/1.json
  def destroy
    @super_name.destroy
    respond_to do |format|
      format.html { redirect_to supernames_url, notice: 'Supername was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_name
      @super_name = Super_name.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_name_params
      params.require(:super_name).permit(:name, :description)
    end
end