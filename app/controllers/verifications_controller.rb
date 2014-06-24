class VerificationsController < ApplicationController
  def new
    current_user.update_attribute(:verification_code, '1234') unless current_user.verification_code.present?
  end

  def create
    given_code = params[:verification_code]

    if current_user.verification_code == given_code
      current_user.update_attribute(:verified, true)
      redirect_to users_path
    else
      render action: 'new'
    end
  end
end
