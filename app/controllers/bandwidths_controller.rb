class BandwidthsController < ApplicationController
  before_action :set_bandwidth, only: %i[show destroy]
  before_action :find_server, only: :index

  # GET /bandwidths or /bandwidths.json
  def index
    @bandwidths = @server.bandwidths
  end

  # GET /bandwidths/1 or /bandwidths/1.json
  def show; end

  # DELETE /bandwidths/1 or /bandwidths/1.json
  def destroy
    @bandwidth.destroy
    respond_to do |format|
      format.html { redirect_to bandwidths_url, notice: 'Bandwidth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bandwidth
    @bandwidth = Bandwidth.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bandwidth_params
    params.require(:bandwidth).permit(:server_id, :value, :interface_name, :value_id)
  end

  def find_server
    @server = Server.find(params[:server_id])
  end
end
