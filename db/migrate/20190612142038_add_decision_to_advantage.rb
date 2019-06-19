# frozen_string_literal: true

class AddDecisionToAdvantage < ActiveRecord::Migration[5.2]
  def change
    add_reference :advantages, :decision, foreign_key: true
  end
end
