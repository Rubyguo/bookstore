class BooksinlistsController < ApplicationController
  before_action :set_booksinlist, only: [:show, :edit, :update, :destroy]

  # GET /booksinlists
  # GET /booksinlists.json
  def index
    @booksinlists = Booksinlist.all
  end

  # GET /booksinlists/1
  # GET /booksinlists/1.json
  def show
  end

  # GET /booksinlists/new
  def new
    @booksinlist = Booksinlist.new
  end

  # GET /booksinlists/1/edit
  def edit
  end

  # POST /booksinlists
  # POST /booksinlists.json
  def create
    @booksinlist = Booksinlist.new(booksinlist_params)

    respond_to do |format|
      if @booksinlist.save
        format.html { redirect_to @booksinlist, notice: 'Booksinlist was successfully created.' }
        format.json { render :show, status: :created, location: @booksinlist }
      else
        format.html { render :new }
        format.json { render json: @booksinlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booksinlists/1
  # PATCH/PUT /booksinlists/1.json
  def update
    respond_to do |format|
      if @booksinlist.update(booksinlist_params)
        format.html { redirect_to @booksinlist, notice: 'Booksinlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @booksinlist }
      else
        format.html { render :edit }
        format.json { render json: @booksinlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booksinlists/1
  # DELETE /booksinlists/1.json
  def destroy
    @booksinlist.destroy
    respond_to do |format|
      format.html { redirect_to booksinlists_url, notice: 'Booksinlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booksinlist
      @booksinlist = Booksinlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booksinlist_params
      params.require(:booksinlist).permit(:booklist_id, :book_id)
    end
end
