class ReviewsController < ApplicationController
  def create
    @teacher = Teacher.find(params[:teacher_id])
    @review = Review.new(review_params)
    @review.teacher = @teacher

    respond_to do |format|
      if @review.save
        format.html { redirect_to teacher_path(@teacher) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "teachers/show", status: :unprocessable_entity }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
