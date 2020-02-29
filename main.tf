
# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

data "github_repositories" "gos" {
  query = "org:Lyrewing language:Go"
}

# Add a user to the organization
resource "github_membership" "membership_for_user_x" {
  username = "fengzhanyuan"
}

