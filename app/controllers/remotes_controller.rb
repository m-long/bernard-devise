class RemotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_remote, only: [:show, :edit, :update, :destroy]

  # GET /remotes
  # GET /remotes.json
  def index
    @remotes = Remote.all
  end

  # GET /remotes/1
  # GET /remotes/1.json
  def show
  end

  # GET /remotes/new
  def new
    @remote = Remote.new
    @device_brands = DeviceBrand.all
    @device_models = DeviceModel.all
  end

  # GET /remotes/1/edit
  def edit
    @device_brands = DeviceBrand.all
    @device_models = DeviceModel.all
  end

  # POST /remotes
  # POST /remotes.json
  def create
    @device_brands = DeviceBrand.all
    @device_models = DeviceModel.all
    @remote = current_user.submitted_remotes.new(remote_params)

    respond_to do |format|
      if @remote.save
        format.html { redirect_to @remote, notice: 'Remote was successfully created.' }
        format.json { render :show, status: :created, location: @remote }
      else
        format.html { render :new }
        format.json { render json: @remote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remotes/1
  # PATCH/PUT /remotes/1.json
  def update
    respond_to do |format|
      if @remote.update(remote_params)
        format.html { redirect_to @remote, notice: 'Remote was successfully updated.' }
        format.json { render :show, status: :ok, location: @remote }
      else
        format.html { render :edit }
        format.json { render json: @remote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remotes/1
  # DELETE /remotes/1.json
  def destroy
    @remote.destroy
    respond_to do |format|
      format.html { redirect_to remotes_url, notice: 'Remote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remote
      @remote = Remote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remote_params
      params.require(:remote).permit(:name, :brand_id, 
                                     :model, :supported_devices, :bits, 
                                     :flags, :include, :manual_sort, 
                                     :suppress_repeat, :driver, :eps, :aeps, 
                                     :header, :zero, :one, :two, :three, 
                                     :ptrail, :plead, :foot, :repeat, 
                                     :pre_data_bits, :pre_data, 
                                     :post_data_bits, :post_data, 
                                     :pre, :post, 
                                     :gap, :repeat_gap, :min_repeat, 
                                     :toggle_bit, :toggle_bit_mask, 
                                     :repeat_mask, :frequency, :duty_cycle,
                                     :device_model_ids => [])
    end
end
