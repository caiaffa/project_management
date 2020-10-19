alias ProjectManagement.Repo
alias ProjectManagement.Management.Project

Repo.insert!(%Project{
  title: "Super cool project",
  description: "This project is the best project ever"
})

Repo.insert!(%Project{
  title: "Kinda cool project",
  description: "This project is the best project ever"
})
