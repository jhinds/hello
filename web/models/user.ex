defmodule Rumbl.User do
  use Rumbl.Web, :model

  schema "users" do
    field :name,:string
    field :username, :string
    field :password, :string, virtudal: true
    field :password_hash, :string

    timestamps
  end
end
