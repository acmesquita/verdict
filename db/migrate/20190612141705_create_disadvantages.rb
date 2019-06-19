# frozen_string_literal: true

class CreateDisadvantages < ActiveRecord::Migration[5.2]
  def change
    create_table :disadvantages do |t|
      t.string :description

      t.timestamps
    end
  end
end
