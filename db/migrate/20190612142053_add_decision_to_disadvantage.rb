class AddDecisionToDisadvantage < ActiveRecord::Migration[5.2]
  def change
    add_reference :disadvantages, :decision, foreign_key: true
  end
end
