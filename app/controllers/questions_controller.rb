class QuestionsController < ApplicationController

    def index
        @questions = Question.all
    end

    def edit
        @question = Question.find(params[:id])
    end

    def show
        @question = Question.find(params[:id])
    end

    def new
        @question = Question.new
    end
    
    def create
        @question = Question.new(question_params)

        if @question.save
            redirect_to @question
        else
            render 'new'
        end
    end

    def update
        @question = Question.find(params[:id])

        if @question.update(question_params)
            redirect_to @question
        else
            render 'edit'
        end
    end

    def destroy
        @question = Question.find(params[:id])
        @question.destroy
        redirect_to questions_path
    end

    private
        def question_params
            params.require(:question).permit(:title, :text, :email, :name)
        end
end
