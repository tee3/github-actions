workflow "Workflow" {
  on = "push"
  resolves = ["cplusplus"]
}

action "cplusplus" {
  uses = "./cplusplus"
  runs = ["sh", "-c", "cd .github/cplusplus && bjam"]
}
