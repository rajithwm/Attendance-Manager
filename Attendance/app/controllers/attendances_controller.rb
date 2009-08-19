class AttendancesController < ApplicationController
  before_filter :check_add, :only => [:new]
  def new
    @attendance = Attendance.new
  end

  def index
    @date = Date.new(Time.now.year, Time.now.month, Time.now.day)
    @attendances = Attendance.find(:all, :conditions=>['Entry_timestamp > ?', @date])
  end

  def create
    @attendance = Attendance.new(params[:attendance])
    @attendance.save
    redirect_to "/attendances"
  end

  def find
    newDae = Date.new(ParseDate.parsedate(params[:date])[0],ParseDate.parsedate(params[:date])[1],ParseDate.parsedate(params[:date])[2])
    afterOneDate = newDae + 1
    @date = newDae
    @attendances = Attendance.find(:all, :conditions=>['Entry_timestamp > ? and Entry_timestamp < ?', newDae, afterOneDate])

  end

  private
    def check_add
      authenticate_or_request_with_http_basic("Attendances") do |username, password|
        username =="admin" && password=="password"
      end

    end
end
