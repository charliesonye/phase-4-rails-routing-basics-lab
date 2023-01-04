class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        ordered_students = Student.order(grade: :desc)
        render json: ordered_students
    end

    def highest
        student = Student.highest_student_grade
        render json: student
    end
end
