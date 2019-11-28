# frozen_string_literal: true

class ApplicationController < ActionController::API
  attr_reader :current_user

  before_action :set_current_user

  private

  def set_current_user
    @current_user = User.find_or_create_by!(uuid: params[:uuid])
  end
end
