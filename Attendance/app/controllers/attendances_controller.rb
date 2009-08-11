class AttendancesController < ApplicationController
  before_filter :check_add, :only => [:new]
  def new
    @attendance = Attendance.new
  end

  def index
    @attendances = Attendance.find(:all)
  end

  def create
    @attendance = Attendance.new(params[:attendance])
    @attendance.save
    redirect_to "/attendances"
  end

  private
    def check_add
      authenticate_or_request_with_http_basic("Attendances") do |username, password|
        username =="admin" && password=="password"
      end

    end
end
