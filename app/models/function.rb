class Function < ApplicationRecord
  #validates :displayed_at, presence: true, uniqueness: true
  belongs_to :movie

  def self.search(params)
    functions  = Function.all
    if(params[:date_filter].present?)
      date_filter = Date.strptime(params[:date_filter], "%Y-%m-%d")
      functions = functions.where(displayed_at: date_filter)
    end
    functions = functions.where(movie_id: params[:movie_id]) if params[:movie_id].present?
    functions = functions.order('displayed_at DESC')
    functions
  end
end
