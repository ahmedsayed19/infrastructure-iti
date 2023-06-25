# google_service_account
resource "google_service_account" "service-a" {
  account_id = "service-a"
}

# oogle_project_iam
resource "google_project_iam_member" "service-a" {
  project = "ahmed-sayed-387907"
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.service-a.email}"
}

# google_service_account_iam
resource "google_service_account_iam_member" "service-a" {
  service_account_id = google_service_account.service-a.id
  role               = "roles/iam.workloadIdentityUser"
  member             = "serviceAccount:ahmed-sayed-387907.svc.id.goog[staging/service-a]"
}
