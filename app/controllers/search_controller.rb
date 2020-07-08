class SearchController < ApplicationController
  def index
  end
  def show
    search_patterns = params[:patterns].scan(/\w+/)
    @result = Question.all.select do |problem|
      search_patterns.all?{ |pattern| problem.hashtags.include? pattern }
    end

  end
end
