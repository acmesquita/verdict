# frozen_string_literal: true

class Decision < ApplicationRecord
  has_many :advantages, dependent: :destroy
  has_many :disadvantages, dependent: :destroy
  has_many :notes, dependent: :destroy
end
