defmodule Sentest.PageController do
  use Sentest.Web, :controller

  def index(conn, _params) do
    #render conn, "index.json"
    raise ArgumentError
  end
end
