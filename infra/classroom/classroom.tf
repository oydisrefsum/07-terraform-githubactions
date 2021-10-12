module "students" {
  source        = "../seat"
  for_each      = var.students
  student_id    = each.key
  student_email = each.value.email
  region        = var.region
}

output "urls" {
  value = { for student in keys(var.students) : student => module.students[student].cloud9_url }
}

output "encrypted_passwords" {
  value = { for student in keys(var.students) : student => module.students[student].password }
}

output "acess_key_ids" {
  value = { for student in keys(var.students) : student => module.students[student].access_key_id }
}

output "secret_access_key_ids" {
  value = { for student in keys(var.students) : student => module.students[student].secret_access_key }
}