class Function < ApplicationRecord
  validates :displayed_at, presence: true, uniqueness: true
  belongs_to :movie

  def self.search(params)
    functions  = Function.all
    functions = functions.where(displayed_at: params[:date_filter]) if params[:date_filter].present?
    functions = functions.order('displayed_at DESC')
    functions
  end
end
