defmodule Hello.Repo do
  @moduledoc """
  In memory repository.
  """

  def all(Hello.User) do
    [%Hello.User{id: "1", name: "Jose", username: "josevalim", password: "elxir"},
     %Hello.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs"},
     %Hello.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"},
     %Hello.User{id: "3", name: "Chris2", username: "chrismccord", password: "phx"}]
  end
  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end
