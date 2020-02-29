variable "name"             { }
variable "desc"            { }
variable "private"         { default = false }
variable "organization"     { }
variable "github_token" {default = "f5e42de874e00ba2d44a53a4ebeed47d66a9b637" }
variable "default_branch"   { }

variable auto_init {
    default = true
    description = "If true, the repository will be initialized with an initial commit and a README file. If false, it will be empty"
}