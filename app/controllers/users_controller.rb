# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: :show

  def show; end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
