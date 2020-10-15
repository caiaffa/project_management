defmodule ProjectManagementWeb.ProjectView do
  use ProjectManagementWeb, :view
  alias ProjectManagementWeb.ProjectView

  def render("index.json", %{projects: projects}) do
    %{data: render_many(projects, ProjectView, "project.json")}
  end

  def render("show.json", %{project: project}) do
    %{data: render_one(project, ProjectView, "project.json")}
  end

  def render("project.json", %{project: project}) do
    %{id: project.id, title: project.title, description: project.description}
  end
end
