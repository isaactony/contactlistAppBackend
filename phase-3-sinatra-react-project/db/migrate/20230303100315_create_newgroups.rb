class CreateNewgroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :groupname
    end
    
  end
end
