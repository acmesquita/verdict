# frozen_string_literal: true

class AddColunmToDecision < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :title, :string
  end
end
