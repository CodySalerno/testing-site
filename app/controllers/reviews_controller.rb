class ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :require_permission, except: [:index, :show, :edit, :new, :create]


  def index
    @reviews = Review.all
    render :index
  end

  def show
    @review = Review.find(params[:id])
    render :show
  end

  def new
    @review = Review.new
    render :new
  end

  def create
    @review = current_user.reviews.build(params.require(:review).permit(:comment, :rating))
    if @review.save
      flash[:success] = 'New review successfully created!'
      redirect_to reviews_url
    else
      flash.now[:error] = 'New review creation failed'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @review = Review.find(params[:id])
    render :edit
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(params.require(:review).permit(:comment, :rating))
      flash[:success] = 'Review successfully updated!'
      redirect_to review_url(@review)
    else
      flash.now[:error] = 'Review update failed'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:success] = 'Review successfully deleted!'
    redirect_to reviews_url
  end

  def require_permission
    if Review.find(params[:id]).creator != current_user
      flash[:error] = 'You do not have permission to do that.'
      redirect_to reviews_path
    end
  end

  # def index
  #   @prebuilt = Prebuilt.find(params[:prebuilt_id])
  #   @reviews = @prebuilt.reviews
  #   render :index
  # end

  # def show
  #   @prebuilt = Prebuilt.find(params[:prebuilt_id])
  #   @review = @prebuilt.reviews.find(params[:id])
  #   render :show
  # end

  # def new
  #   @prebuilt = Prebuilt.find(params[:prebuilt_id])
  #   @review = Review.new
  #   render :new
  # end

  # def create
  #   @prebuilt = Prebuilt.find(params[:prebuilt_id])
  #   @review = @prebuilt.reviews.build(params.require(:review).permit(:comment, :rating))
  #   if @review.save
  #     flash[:success] = "Review saved successfully"
  #     redirect_to prebuilt_reviews_url(@prebuilt)
  #   else
  #     flash.now[:error] = "Review could not be saved"
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def edit
  #   @prebuilt = Prebuilt.find(params[:prebuilt_id])
  #   @review = @prebuilt.reviews.find(params[:id])
  #   render :edit
  # end

  # def update
  #   @prebuilt = Prebuilt.find(params[:prebuilt_id])
  #   @review = @prebuilt.reviews.find(params[:id])
  #   if @review.update(params.require(:review).permit(:comment))
  #     flash[:success] = "Review updated successfully"
  #     redirect_to prebuilt_review_url(@prebuilt, @review)
  #   else
  #     flash.now[:error] = "Review could not be updated"
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @prebuilt = Prebuilt.find(params[:prebuilt_id])
  #   @review = @prebuilt.reviews.find(params[:id])
  #   @review.destroy
  #   flash[:success] = "review deleted successfully"
  #   redirect_to prebuilt_reviews_url(@prebuilt), status: :see_other
  # end

  # def require_permission
  #   @prebuilt = Prebuilt.find(params[:prebuilt_id])
  #   if @prebuilt.creator != current_user
  #     flash[:error] = 'You do not have permission to do that.'
  #     redirect_to prebuilt_path(@prebuilt)
  #   end
  # end



end
