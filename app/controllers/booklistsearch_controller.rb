class BooklistsearchController < ApplicationController
  def index
    @q = Booklist.ransack(params[:q])
    @searchbooklist = @q.result(distinct: true)
  end
end
