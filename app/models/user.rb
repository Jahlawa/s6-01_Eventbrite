class User < ApplicationRecord
	after_create :welcome_send

	has_many :attendances
	has_many :events, through: :attendances
	has_many :organizers, foreign_key: "organizer_id", class_name: "Event"

	# Each time a user signs up he receives a welcome e-mail via this method
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
