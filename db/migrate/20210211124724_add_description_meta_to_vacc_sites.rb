class AddDescriptionMetaToVaccSites < ActiveRecord::Migration[6.1]
  def change
    add_column :vacc_sites, :desc, :string
    add_column :vacc_sites, :meta, :string
  end
end
