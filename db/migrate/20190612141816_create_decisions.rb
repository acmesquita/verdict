# frozen_string_literal: true

class CreateDecisions < ActiveRecord::Migration[5.2]
  def change
    create_table :decisions, &:timestamps
  end
end
