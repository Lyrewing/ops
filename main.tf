
# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

data "github_repositories" "gos" {
  query = "org:Lyrewing language:Go"
}

output "go_repositories" {
  value = "${data.github_repositories.gos}"
}


# Add a user to the organization
resource "github_membership" "membership_for_user_x" {
  username = "fengzhanyuan"
}

