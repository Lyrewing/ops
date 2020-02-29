provider "github" {
  token        = "${var.github_token}"
  organization = "${var.organization}"
}

resource github_repository repo {
    name           = "${var.name}"
    private        = "${var.private}"
    has_wiki       = true
    auto_init      = "${var.auto_init}"
    has_issues     = true
    description    = "${var.desc}"
    has_downloads  = false

    # TODO: figure out how to set this. (repo needs to have already been created...)
    default_branch = "${var.default_branch}"

    lifecycle {
        ignore_changes  = ["auto_init", "default_branch"]
        prevent_destroy = true
    }
}

resource github_repository_collaborator fengzhanyuan2016 {
    repository = "${github_repository.repo.name}"
    permission = "admin"
    username   = "fengzhanyuan2016"
}