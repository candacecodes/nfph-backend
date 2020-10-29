class AddNpiToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :NPI_number, :integer
  end
end
