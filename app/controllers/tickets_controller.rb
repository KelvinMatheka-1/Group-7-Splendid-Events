class TicketsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  # before_action :set_ticket, only: [:show, :update, :destroy]

  # GET /tickets
  def index
    tickets = Ticket.all

    render json: tickets, status: :ok
  end

  # GET /tickets/1
  def show
    ticket = set_ticket
    render json: ticket
  end

  # POST /tickets
  def create
    ticket = Ticket.create!(ticket_params)
    render json:ticket, status: :created
  end

  # PATCH/PUT /tickets/1
  def update
    ticket = set_ticket
    ticket.update!(ticket_params)
      render json: ticket, status: :created
  end

  # DELETE /tickets/1
  def destroy
    ticket = set_ticket
    ticket.destroy!
    render json: {}, status: :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.permit(:user_id, :event_id)
    end

    def render_unprocessable_entity(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
