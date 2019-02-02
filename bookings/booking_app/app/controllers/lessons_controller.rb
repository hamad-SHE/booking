class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]
def index
    @lessons = Lesson.paginate(:page => params[:page], :per_page => 6).order('sort ASC')
  end
def show
    @others = Lesson.paginate(:page => params[:page], :per_page => 4).order('sort ASC')
  end
private
def set_lesson
    @lesson = Lesson.find(params[:id])
end
end