class RenameTypeColumnOnVaccSites < ActiveRecord::Migration[6.1]
  def change
    rename_column :vacc_sites, :check_handler, :type
  end
end
