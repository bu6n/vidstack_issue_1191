defmodule VidstackIssue1191Web.Live2 do
  use VidstackIssue1191Web, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <h1>Page 2</h1>
    """
  end
end
