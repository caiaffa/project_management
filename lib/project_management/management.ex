defmodule ProjectManagement.Management do
  @moduledoc """
  The Management context.
  """

  import Ecto.Query, warn: false
  alias ProjectManagement.Repo

  alias ProjectManagement.Management.Project

  @doc """
  Returns the list of projects.

  ## Examples

      iex> list_projects()
      [%Project{}, ...]

  """
  def list_projects do
    Repo.all(Project)
  end

  @doc """
  Gets a single project.

  Raises `Ecto.NoResultsError` if the Project does not exist.

  ## Examples

      iex> get_project(123)
      %Project{}

      iex> get_project(456)
      ** nil

  """
  def get_project(id) do
    case Repo.get(Project, id) do
      nil -> {:error, :not_found}
      project -> {:ok, project}
    end
  end

  @doc """
  Creates a project.

  ## Examples

      iex> create_project(%{field: value})
      {:ok, %Project{}}

      iex> create_project(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_project(attrs \\ %{}) do
    %Project{}
    |> Project.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a project.

  ## Examples

      iex> update_project(id, %{field: new_value})
      {:ok, %Project{}}

      iex> update_project(id, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

      iex> update_project(id, %{field: new_value})
      {:error, :not_found}

      iex> update_project(id, %{field: bad_value})
      {:error, :not_found}

  """
  def update_project(id, attrs) do
    case Repo.get(Project, id) do
      nil ->
        {:error, :not_found}

      project ->
        project
        |> Project.changeset(attrs)
        |> Repo.update()
    end
  end

  @doc """
  Deletes a project.

  ## Examples

      iex> delete_project(project)
      {:ok, %Project{}}

      iex> delete_project(project)
      {:error, %Ecto.Changeset{}}

      iex> delete_project(project)
      {:error, :not_found}

  """
  def delete_project(id) do
    case Repo.get(Project, id) do
      nil ->
        {:error, :not_found}

      project ->
        project
        |> Repo.delete()
    end
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking project changes.

  ## Examples

      iex> change_project(project)
      %Ecto.Changeset{data: %Project{}}

  """
  def change_project(%Project{} = project, attrs \\ %{}) do
    Project.changeset(project, attrs)
  end
end
