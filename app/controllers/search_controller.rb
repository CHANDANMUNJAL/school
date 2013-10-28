class SearchController < ApplicationController
  def home
  end

  def show
    @schools = School.search(params[:search])
  end
end 