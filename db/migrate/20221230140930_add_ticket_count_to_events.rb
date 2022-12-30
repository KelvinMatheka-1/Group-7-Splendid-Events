class AddTicketCountToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :ticket_count, :integer
  end
end
