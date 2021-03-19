class ServersController < ApplicationController
  before_action :set_server, only: %i[show destroy]
  before_action :find_bandwidths, only: %i[show destroy]

  # rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_server_not_found

  # GET /servers or /servers.json
  def index
    @servers = Server.all
    # render json: @servers, status: :ok
  end

  # GET /servers/1 or /servers/1.json
  def show; end

  # DELETE /servers/1 or /servers/1.json
  def destroy
    @server.destroy
    @bandwidths.destroy
    respond_to do |format|
      format.html { redirect_to servers_url, notice: 'Server was successfully destroyed.' }
      format.json { head :no_content }
    end
    # render json: @server, status: 204
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_server
    @server = Server.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def server_params
    params.require(:server).permit(:name)
  end

  def find_bandwidths
    @bandwidths = @server.bandwidths
  end

  # def rescue_with_server_not_found
  #   render plain: 'Server was not found'
  # end
end
