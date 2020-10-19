defmodule ProjectManagementWeb.DocumentView do
  use ProjectManagementWeb, :view
  use JaSerializer.PhoenixView

  attributes([:name, :published, :content, :view_count, :project_id])
end
