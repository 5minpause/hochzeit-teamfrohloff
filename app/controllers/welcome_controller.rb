class WelcomeController < ApplicationController
  def index
  end

  def register_guests
    if valid_guest?
      @guest = { name: guest_params[:name], count: guest_params[:number] }
      GuestRegistrationMailer.send_notification(@guest).deliver
    end
  end

  private

  def valid_guest?
    guest_name_valid? && guest_count_greater_one?
  end

  def guest_params
    params[:guest]
  end

  def guest_name_valid?
    guest_params[:name] =~ /([A-Za-z])+?\s/
  end

  def guest_count_greater_one?
    guest_params[:number].to_i > 0
  end
end
