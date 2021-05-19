class AddColumnTreeIdToBird < ActiveRecord::Migration[6.1]
  def change
    add_reference :birds, :tree, foreign_key: true
  end
end
