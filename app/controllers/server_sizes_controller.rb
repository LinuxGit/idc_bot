class ServerSizesController < ApplicationController
  before_action :set_server_size, only: [:show, :edit, :update, :destroy]

  # GET /server_sizes
  # GET /server_sizes.json
  def index
    @server_sizes = ServerSize.all
  end

  # GET /server_sizes/1
  # GET /server_sizes/1.json
  def show
  end

  # GET /server_sizes/new
  def new
    @server_size = ServerSize.new
  end

  # GET /server_sizes/1/edit
  def edit
  end

  # POST /server_sizes
  # POST /server_sizes.json
  def create
    @server_size = ServerSize.new(server_size_params)

    respond_to do |format|
      if @server_size.save
        format.html { redirect_to @server_size, notice: 'Server size was successfully created.' }
        format.json { render :show, status: :created, location: @server_size }
      else
        format.html { render :new }
        format.json { render json: @server_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /server_sizes/1
  # PATCH/PUT /server_sizes/1.json
  def update
    respond_to do |format|
      if @server_size.update(server_size_params)
        format.html { redirect_to @server_size, notice: 'Server size was successfully updated.' }
        format.json { render :show, status: :ok, location: @server_size }
      else
        format.html { render :edit }
        format.json { render json: @server_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_sizes/1
  # DELETE /server_sizes/1.json
  def destroy
    @server_size.destroy
    respond_to do |format|
      format.html { redirect_to server_sizes_url, notice: 'Server size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_server_size
      @server_size = ServerSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def server_size_params
      params.require(:server_size).permit(:size_name, :model, :cpu, :cpu_cores, :memory, :disk)
    end
end
