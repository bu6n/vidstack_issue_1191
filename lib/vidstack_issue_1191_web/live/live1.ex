defmodule VidstackIssue1191Web.Live1 do
  use VidstackIssue1191Web, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <h1>Hello</h1>
    """
  end
end
