class MembresController < ApplicationController
  before_action :set_membre, only: %i[ show edit update destroy ]

  # GET /membres
  def index
    @membres = Membre.all
  end

  # GET /membres/1
  def show
  end

  # GET /membres/new
  def new
    @membre = Membre.new
  end

  # GET /membres/1/edit
  def edit
  end

  # POST /membres
  def create
    @membre = Membre.new(membre_params)

    if @membre.save
      redirect_to @membre, notice: "Membre was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /membres/1
  def update
    if @membre.update(membre_params)
      redirect_to @membre, notice: "Membre was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /membres/1
  def destroy
    @membre.destroy
    redirect_to membres_url, notice: "Membre was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membre
      @membre = Membre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def membre_params
      params.require(:membre).permit(:mbID, :fiantso, :anarana, :fanampiny, :tsyeo, :fanamarih)
    end
end
