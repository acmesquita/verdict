# frozen_string_literal: true

json.extract! decision, :id, :created_at, :updated_at
json.url decision_url(decision, format: :json)
