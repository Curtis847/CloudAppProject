json.extract! patient, :id, :firstname, :lastname, :dateofbirth, :address, :phonenumber, :infection, :injury, :observations, :created_at, :updated_at
json.url patient_url(patient, format: :json)
