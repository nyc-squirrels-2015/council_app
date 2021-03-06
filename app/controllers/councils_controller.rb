class CouncilsController < ApplicationController
  def index
    @councils = Council.where(user_id: current_user.id).order('created_at DESC')
  end

  def new
    @council = Council.new
  end

  def create

    @council = Council.where(council_params).first_or_create
    if @council
      if request.xhr?
        render :json => @council
      else
        flash[:notice] = 'Added to list'
        redirect_to councils_path
      end

    else
      usual_error = find_in_errors(@council, "can't be blank")
      flash[:error] = usual_error ? 'Field cannot be left blank.' : 'The council could not be created.'
      render :new
    end
  end

  def show
    find_council(params[:id])
  end

  def edit
    find_council(params[:id])
  end

  def update
    find_council(params[:id])
    if @council.update_attributes(council_params)
      redirect_to @council
    else
      render :edit
    end
  end

  def destroy
    council = Council.find_by(id: params[:id])

    council.destroy
    redirect_to councils_path
  end

  private
  def council_params
   params.require(:council).permit(:council_name).merge(user_id: current_user.id)
  end

  def find_council id
    @council = Council.find(id)
  end

end