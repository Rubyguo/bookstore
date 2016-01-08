class BookselvesController < ApplicationController
  before_action :set_bookself, only: [:show, :edit, :update, :destroy]

  # GET /bookselves
  # GET /bookselves.json
  def index
    @bookselves = Bookself.all
  end

  # GET /bookselves/1
  # GET /bookselves/1.json
  def show
  end

  # GET /bookselves/new
  def new
    @bookself = Bookself.new
  end

  # GET /bookselves/1/edit
  def edit
  end

  # POST /bookselves
  # POST /bookselves.json
  def create
    @bookself = Bookself.new(bookself_params)

    respond_to do |format|
      if @bookself.save
        format.html { redirect_to @bookself, notice: 'Bookself was successfully created.' }
        format.json { render :show, status: :created, location: @bookself }
      else
        format.html { render :new }
        format.json { render json: @bookself.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookselves/1
  # PATCH/PUT /bookselves/1.json
  def update
    respond_to do |format|
      if @bookself.update(bookself_params)
        format.html { redirect_to @bookself, notice: 'Bookself was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookself }
      else
        format.html { render :edit }
        format.json { render json: @bookself.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookselves/1
  # DELETE /bookselves/1.json
  def destroy
    @bookself.destroy
    respond_to do |format|
      format.html { redirect_to bookselves_url, notice: 'Bookself was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookself
      @bookself = Bookself.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookself_params
      params.require(:bookself).permit(:user_id, :book_id)
    end
end
