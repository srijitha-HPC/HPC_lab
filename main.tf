provider "google" {
  project     = var.project_id
  #region      = "us-central1"
  #zone        = "us-central1-c"
  user_project_override = true
  credentials = var.credential_file
}

data "google_billing_account" "account" {
  billing_account = var.bill_account
}

data "google_project" "project" {
}

resource "google_billing_budget" "budget" {
  #billing_account = data.google_billing_account.account.id
  billing_account = var.bill_account
  display_name    = "Billing Budget today2"

  budget_filter {
    projects = ["projects/${data.google_project.project.number}"]
  }

  amount {
    specified_amount {
      currency_code = "INR"
      units         = "21800"
    }
  }

  threshold_rules {
    threshold_percent = 0.5
  }
  threshold_rules {
    spend_basis = "FORECASTED_SPEND"
    threshold_percent = 0.75
  }
  threshold_rules {
    spend_basis = "CURRENT_SPEND"
    threshold_percent = 0.8
  }
  threshold_rules {
    spend_basis = "CURRENT_SPEND"
    threshold_percent = 1.0
  }


  all_updates_rule {
    monitoring_notification_channels = [
      google_monitoring_notification_channel.notification_channel.id,
    ]
    disable_default_iam_recipients = true
  }
}

resource "google_monitoring_notification_channel" "notification_channel" {
  display_name = "Notification Channel"
  type         = "email"

  labels = {
    email_address = "avengergcp@gmail.com"
  }
}