class UserController < Clearance::UsersController

	def index
    @user = User.all
  end

  def show
  end

  def destroy
    @user = User.find(params[:id])
    if @user.departamento.present?
      @user.departamento.destroy
    end
    if @user.present?
      @user.destroy
    end
    redirect_to user_index_path
  end

	def update
    @user = User.find(params[:id])
    if @user.admin?
      @user.toggle!(:oficialia)
      @user.toggle!(:admin)
    else
      @user.toggle!(:admin)
    end
    flash[:success] = 'OK!'
    redirect_to user_index_path
  end



  def create
    @user= User.new(user_params)
    	respond_to do |format|
    		if @user.save
        		format.html { redirect_to @user, notice: 'Registro was successfully created.' }
        		format.json { render :show, status: :created, location: @registro }
      		else
        		format.html { render :new }
        		format.json { render json: @user.errors, status: :unprocessable_entity }
      		end
      	end
    end
end
