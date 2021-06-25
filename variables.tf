variable "credential_file" {
  type = string
  default = "./credentials.json"
}

variable "bill_account" {
  type = string
  default = "01842A-778876-18E337"
} 

variable "project_id" {
  type = string
  default = "hpc-lab-316407"
}

variable "budget_name" {
  type = string
  default = "Billing Budget90"
}

variable "amount" {
  description = "The amount to use as the budget"
  type = number
  default = 11804
}

variable "currency" {
  description = "The currency to use for the budget"
  type   = string
  default = "INR"
}

variable "email" {
  description = "The email for notifications"
  type   = string
  default = "avengergcp@gmail.com"
}

variable "percent1" {
  description = "A list of percentages of the budget to alert on when threshold is exceeded"
  type = number
  default = 0.5
}
variable "percent2" {
  description = "A list of percentages of the budget to alert on when threshold is exceeded"
  type = number
  default = 0.75
}
variable "percent3" {
  description = "A list of percentages of the budget to alert on when threshold is exceeded"
  type = number
  default = 0.8
}
variable "percent4" {
  description = "A list of percentages of the budget to alert on when threshold is exceeded"
  type = number
  default = 1
}