defmodule Hello.UserController do
  use Hello.Web, :controller

  def index(conn, _params) do
      users = Repo.all(Hello.User)
      render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Hello.User, id)
    render conn, "show.html", user: user
  end
end
