module DecisionsHelper

    def addNewOption(decision, nameMethod, value)
        nameModel = nameMethod.humanize.singularize
        decision.send(nameMethod).push(nameModel.constantize.new({description: value}))
        decision.save()

        template = "<tr>
            <td>##{decision.send(nameMethod).count}</td>
            <td>#{value}</td>
        <tr>"

    end
end
