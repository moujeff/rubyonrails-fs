class AddAdminsTypesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.timestamps
    end
    create_table :types_admins, id: false do |t|
      t.belongs_to :admin, index: true
      t.belongs_to :type, index: true
    end
  end
end
