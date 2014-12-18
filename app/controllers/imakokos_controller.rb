class ImakokosController < ApplicationController
  before_action :set_imakoko, only: [:show, :edit, :update, :destroy]

  # GET /imakokos
  # GET /imakokos.json
  def index
    @imakokos = Imakoko.all
  end

  # GET /imakokos/1
  # GET /imakokos/1.json
  def show
		
		    @hash = Gmaps4rails.build_markers(@imakoko) do |ima, marker|
					marker.lat ima.ido
					marker.lng ima.keido
					marker.infowindow ima.name
					marker.json({title: ima.name})
    end
		
  end

  # GET /imakokos/new
  def new
    @imakoko = Imakoko.new
  end

  # GET /imakokos/1/edit
  def edit
  end

  # POST /imakokos
  # POST /imakokos.json
  def create
    @imakoko = Imakoko.new(imakoko_params)

    respond_to do |format|
      if @imakoko.save
        format.html { redirect_to @imakoko, notice: 'Imakoko was successfully created.' }
        format.json { render :show, status: :created, location: @imakoko }
      else
        format.html { render :new }
        format.json { render json: @imakoko.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imakokos/1
  # PATCH/PUT /imakokos/1.json
  def update
    respond_to do |format|
      if @imakoko.update(imakoko_params)
        format.html { redirect_to @imakoko, notice: 'Imakoko was successfully updated.' }
        format.json { render :show, status: :ok, location: @imakoko }
      else
        format.html { render :edit }
        format.json { render json: @imakoko.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imakokos/1
  # DELETE /imakokos/1.json
  def destroy
    @imakoko.destroy
    respond_to do |format|
      format.html { redirect_to imakokos_url, notice: 'Imakoko was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imakoko
      @imakoko = Imakoko.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imakoko_params
			params.require(:imakoko).permit(:name,:ido,:keido)
    end
end
