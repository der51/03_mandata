class NotariesController < ApplicationController
  before_action :set_archive, only: [:index, :show, :edit, :update, :destroy]
  layout "with_left_sidebar"

  # GET /notaries
  def index
    @notaries = @archive.notaries
  end

  # GET /notaries/1
  def show
  end

  # GET /notaries/new
  def new
    @notary = Notary.new
  end

  # GET /notaries/1/edit
  def edit
  end

  # POST /notaries
  def create
    @notary = Notary.new(notary_params)

    if @notary.save
      redirect_to @notary, notice: t('action.created.successfully')
    else
      render :new
    end
  end

  # PATCH/PUT /notaries/1
  def update
    if @notary.update(notary_params)
      redirect_to @notary,  notice: t('action.updated.successfully')
    else
      render :edit
    end
  end

  # DELETE /notaries/1
  def destroy
    @notary.destroy
    redirect_to notaries_url, notice: t('action.destroyed.successfully')
  end

  private
    def set_archive
      @archive = Archive.find(params[:archive_id])
    end

    # Only allow a trusted parameter "white list" through.
    def notary_params
      params.require(:notary).permit(:no, :notary_type)
    end
end
