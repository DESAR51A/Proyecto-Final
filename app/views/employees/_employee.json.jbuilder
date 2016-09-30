json.extract! employee, :id, :nom_emp, :dni, :phone, :employee_role_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)