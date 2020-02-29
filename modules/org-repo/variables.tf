variable "name"             { }
variable "desc"            { }
variable "private"         { default = false }
variable "organization"     { }
variable "github_token" {}
variable "default_branch"   { }

variable auto_init {
    default = true
    description = "If true, the repository will be initialized with an initial commit and a README file. If false, it will be empty"
}