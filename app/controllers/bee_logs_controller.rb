class BeeLogsController < ApplicationController
  before_action :set_bee_log, only: [:show, :edit, :update, :destroy]

  # GET /bee_logs
  # GET /bee_logs.json
  def index
    @bee_logs = BeeLog.all
  end

  # GET /bee_logs/1
  # GET /bee_logs/1.json
  def show
  end

  # GET /bee_logs/new
  def new
    @bee_log = BeeLog.new
  end

  # GET /bee_logs/1/edit
  def edit
  end

  # POST /bee_logs
  # POST /bee_logs.json
  def create
    @bee_log = BeeLog.new(bee_log_params)

    respond_to do |format|
      if @bee_log.save
        format.html { redirect_to @bee_log, notice: 'Bee log was successfully created.' }
        format.json { render :show, status: :created, location: @bee_log }
      else
        format.html { render :new }
        format.json { render json: @bee_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bee_logs/1
  # PATCH/PUT /bee_logs/1.json
  def update
    respond_to do |format|
      if @bee_log.update(bee_log_params)
        format.html { redirect_to @bee_log, notice: 'Bee log was successfully updated.' }
        format.json { render :show, status: :ok, location: @bee_log }
      else
        format.html { render :edit }
        format.json { render json: @bee_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bee_logs/1
  # DELETE /bee_logs/1.json
  def destroy
    @bee_log.destroy
    respond_to do |format|
      format.html { redirect_to bee_logs_url, notice: 'Bee log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bee_log
      @bee_log = BeeLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bee_log_params
      params.require(:bee_log).permit(:temperature, :humidity, :colony_name, :longitude, :latitude, :status, :monitor_data)
    end
end
