function CreateJob(id, name, label, grade, grade_name, grade_label, grade_salary)
    return {
        id = id,
        name = name,
        grade = grade,
        gradeName = grade_name,
        gradeLabel = grade_label,
        gradeSalary = grade_salary
    }
end

function CreatePickup(type, name, count, label, playerId, components, tintIndex)
end

function CreateCommand(name, perms, cb, allowConsole, suggestion)
end

function CreateServerCallback(name, handler)
end

function CreateUsableItem(item, cb)
end

