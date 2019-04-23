workflow "Deploy on AWS Lambda on PR merge" {
    on = "pull_request"
    resolves = "Deploy"
}

action "Is PR merged" {
    uses = "./actions/is_merged/"
}

action "Deploy" {
    needs = "Is PR merged"
    uses = "./actions/deploy/"
}
