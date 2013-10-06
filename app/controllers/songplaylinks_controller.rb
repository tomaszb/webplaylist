class SongplaylinksController < ApplicationController
  before_action :set_songplaylink, only: [:show, :edit, :update, :destroy]

  # GET /songplaylinks
  # GET /songplaylinks.json
  def index
    @songplaylinks = Songplaylink.all
  end

  # GET /songplaylinks/1
  # GET /songplaylinks/1.json
  def show
  end

  # GET /songplaylinks/new
  def new
    @songplaylink = Songplaylink.new
  end

  # GET /songplaylinks/1/edit
  def edit
  end

  # POST /songplaylinks
  # POST /songplaylinks.json
  def create
    @songplaylink = Songplaylink.new(songplaylink_params)

    respond_to do |format|
      if @songplaylink.save
        format.html { redirect_to @songplaylink, notice: 'Songplaylink was successfully created.' }
        format.json { render action: 'show', status: :created, location: @songplaylink }
      else
        format.html { render action: 'new' }
        format.json { render json: @songplaylink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songplaylinks/1
  # PATCH/PUT /songplaylinks/1.json
  def update
    respond_to do |format|
      if @songplaylink.update(songplaylink_params)
        format.html { redirect_to @songplaylink, notice: 'Songplaylink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @songplaylink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songplaylinks/1
  # DELETE /songplaylinks/1.json
  def destroy
    @songplaylink.destroy
    respond_to do |format|
      format.html { redirect_to songplaylinks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_songplaylink
      @songplaylink = Songplaylink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def songplaylink_params
      params.require(:songplaylink).permit(:song_id, :playlist_id)
    end
end
