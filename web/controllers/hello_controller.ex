defmodule Rumbl.RumblController do
  use Rumbl.Web, :controller

  def world(conn, %{"name" => name}) do
    render conn, "world.html", name: name
  end
end
