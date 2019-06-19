# frozen_string_literal: true

json.array! @decisions, partial: 'decisions/decision', as: :decision
