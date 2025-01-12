# frozen_string_literal: true

class DashboardController < ApplicationController
  def home
    @doctors = User.doctor
  end

  def about; end

  def contact; end
end
