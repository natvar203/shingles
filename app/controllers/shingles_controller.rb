class ShinglesController < ApplicationController

  before_action :gets_shingles_data
  
  def index 
    if params[:uid]
      @selected_shingle = @shingles.select{|a| a.uid == params[:uid]}.first
    else
      @selected_shingle = @shingles.first
    end
  end

  private 
  
  # This method will fetech all the shingles data from API provided
  def gets_shingles_data
    begin
      url = "https://mdms.owenscorning.com/api/v1/product/shingles"
      data = RestClient.get(url)
      @shingles = JSON.parse(data, object_class: OpenStruct)
    rescue
      @shingles  = []
    end
  end

end
