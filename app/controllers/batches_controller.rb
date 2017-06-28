class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
   @batches = current_user.batches
  end

  def show; end

  def new
   @batch = current_user.batches.build
  end

  def create
   @batch = current_user.batches.build(batch_params)

   if @batch.save
     redirect_to @batch, notice: "Batch created"
   else
     render :new
   end
  end

  def edit; end

  def update
   if @batch.update(batch_params)
     redirect_to @batch, notice: "Batch updated"
   else
     render :edit
   end
  end

  private

  def set_batch
   @batch = Batch.find(params[:id])
  end

  def batch_params
   params
     .require(:batch)
     .permit(
       :number, :start_date, :end_date
     )
  end
end
