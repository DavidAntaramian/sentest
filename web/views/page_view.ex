defmodule Sentest.PageView do
  use Sentest.Web, :view

  def render("index.json", _) do
    %{index: true}
  end
end
