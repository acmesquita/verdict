# frozen_string_literal: true

class CreateAdvantages < ActiveRecord::Migration[5.2]
  def change
    create_table :advantages do |t|
      t.string :description

      t.timestamps
    end
  end
end
