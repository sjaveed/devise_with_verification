class VerifiedController < ApplicationController
  before_filter :verify_user

  private

  def verify_user
    redirect_to new_verification_path unless current_user.verified?
  end
end
