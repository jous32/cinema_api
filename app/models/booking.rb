class Booking < ApplicationRecord
  belongs_to :person
  belongs_to :function

  def self.validate_available(booking)
    old_bookings = Booking.where(function_id: booking.function_id).to_a
    if(old_bookings.size < 10)
      return booking.save
    else
      return false
    end
  end
end
