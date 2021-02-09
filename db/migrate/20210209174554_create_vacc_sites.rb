class CreateVaccSites < ActiveRecord::Migration[6.1]
  def change
    create_table :vacc_sites do |t|
      t.string :check_url
      t.string :check_handler
      t.timestamps
    end
  end
end
