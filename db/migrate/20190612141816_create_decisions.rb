class CreateDecisions < ActiveRecord::Migration[5.2]
  def change
    create_table :decisions do |t|

      t.timestamps
    end
  end
end
