# frozen_string_literal: true

class Api::V1::PikamonWildsController < ApplicationController
  before_action :fetch_pikamon_wild, only: [:catch]

  # GET /api/v1/pikamon_wilds/nearby
  def nearby
    lat = params[:lat]
    lon = params[:lon]

    pikamon_wilds = PikamonWild.within(lat, lon)

    render json: pikamon_wilds
  end

  # POST /api/v1/pikamon_wilds/:id/catch
  def catch
    @pikamon_wild.user = current_user
    @pikamon_wild.save

    render json: {}
  end

  private

  def fetch_pikamon_wild
    @pikamon_wild = PikamonWild.find(params[:pikamon_wild_id])
  end
end
