class HomeController < ApplicationController
  def index
    @coaches = Coach.all
    @students = Student.all
  end
end
