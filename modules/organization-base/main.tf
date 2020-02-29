provider "github" {
  token        = "${var.github_token}"
  organization = "${var.organization}"
}

resource "github_team" "owners" {
  name        = "${var.organization}-owners"
  privacy     = "closed"
}

resource "github_team_membership" "owners" {
  count    = "${length(var.owners)}"
  team_id  = "${github_team.owners.id}"
  role     = "member"
  username = "${element(var.owners, count.index)}"
}