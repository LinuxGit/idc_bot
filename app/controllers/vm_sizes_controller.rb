class VmSizesController < ApplicationController
  before_action :set_vm_size, only: [:show, :edit, :update, :destroy]

  # GET /vm_sizes
  # GET /vm_sizes.json
  def index
    @vm_sizes = VmSize.all
  end

  # GET /vm_sizes/1
  # GET /vm_sizes/1.json
  def show
  end

  # GET /vm_sizes/new
  def new
    @vm_size = VmSize.new
  end

  # GET /vm_sizes/1/edit
  def edit
  end

  # POST /vm_sizes
  # POST /vm_sizes.json
  def create
    @vm_size = VmSize.new(vm_size_params)

    respond_to do |format|
      if @vm_size.save
        format.html { redirect_to @vm_size, notice: 'Vm size was successfully created.' }
        format.json { render :show, status: :created, location: @vm_size }
      else
        format.html { render :new }
        format.json { render json: @vm_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vm_sizes/1
  # PATCH/PUT /vm_sizes/1.json
  def update
    respond_to do |format|
      if @vm_size.update(vm_size_params)
        format.html { redirect_to @vm_size, notice: 'Vm size was successfully updated.' }
        format.json { render :show, status: :ok, location: @vm_size }
      else
        format.html { render :edit }
        format.json { render json: @vm_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vm_sizes/1
  # DELETE /vm_sizes/1.json
  def destroy
    @vm_size.destroy
    respond_to do |format|
      format.html { redirect_to vm_sizes_url, notice: 'Vm size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vm_size
      @vm_size = VmSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vm_size_params
      params.require(:vm_size).permit(:size_name, :cpu_cores, :memory, :storage, :disk)
    end
end
