class DirectorsController < ApplicationController
  before_action :set_director, only: %i[show edit update destroy]

  def index
    @q = Director.ransack(params[:q])
    @directors = @q.result(distinct: true).includes(:filmography).page(params[:page]).per(10)
  end

  def show
    @movie = Movie.new
  end

  def new
    @director = Director.new
  end

  def edit; end

  def create
    @director = Director.new(director_params)

    if @director.save
      redirect_to @director, notice: "Director was successfully created."
    else
      render :new
    end
  end

  def update
    if @director.update(director_params)
      redirect_to @director, notice: "Director was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @director.destroy
    redirect_to directors_url, notice: "Director was successfully destroyed."
  end

  def names
    render json: [{ "label": "Frank Darabont", "value": "1" }, { "label": "Francis Ford Coppola", "value": "2" }, { "label": "Quentin Tarantino", "value": "3" }, { "label": "Robert Zemeckis", "value": "15" }].to_json
  end

  private

  def set_director
    @director = Director.find(params[:id])
  end

  def director_params
    params.require(:director).permit(:name, :bio, :dob, :image)
  end
end
