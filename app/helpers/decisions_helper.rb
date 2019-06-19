# frozen_string_literal: true

module DecisionsHelper
  def add_new_option(decision, nameMethod, value)
    name_model = nameMethod.humanize.singularize
    decision.send(nameMethod).push(name_model.constantize.new(description: value))
    decision.save

    "<tr>
      <td>##{decision.send(nameMethod).count}</td>
      <td>#{value}</td>
    <tr>"
  end
end
