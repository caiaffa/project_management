defmodule ProjectManagementWeb.ProjectView do
  use ProjectManagementWeb, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description]

end
