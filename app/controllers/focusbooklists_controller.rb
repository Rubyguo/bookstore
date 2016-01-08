class FocusbooklistsController < ApplicationController
  before_action :set_focusbooklist, only: [:show, :edit, :update, :destroy]

  # GET /focusbooklists
  # GET /focusbooklists.json
  def index
    @focusbooklists = Focusbooklist.all
  end

  # GET /focusbooklists/1
  # GET /focusbooklists/1.json
  def show
  end

  # GET /focusbooklists/new
  def new
    @focusbooklist = Focusbooklist.new
  end

  # GET /focusbooklists/1/edit
  def edit
  end

  # POST /focusbooklists
  # POST /focusbooklists.json
  def create
    @focusbooklist = Focusbooklist.new(focusbooklist_params)

    respond_to do |format|
      if @focusbooklist.save
        format.html { redirect_to @focusbooklist, notice: 'Focusbooklist was successfully created.' }
        format.json { render :show, status: :created, location: @focusbooklist }
      else
        format.html { render :new }
        format.json { render json: @focusbooklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /focusbooklists/1
  # PATCH/PUT /focusbooklists/1.json
  def update
    respond_to do |format|
      if @focusbooklist.update(focusbooklist_params)
        format.html { redirect_to @focusbooklist, notice: 'Focusbooklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @focusbooklist }
      else
        format.html { render :edit }
        format.json { render json: @focusbooklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /focusbooklists/1
  # DELETE /focusbooklists/1.json
  def destroy
    @focusbooklist.destroy
    respond_to do |format|
      format.html { redirect_to focusbooklists_url, notice: 'Focusbooklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_focusbooklist
      @focusbooklist = Focusbooklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def focusbooklist_params
      params.require(:focusbooklist).permit(:user_id, :booklist_id)
    end
end
