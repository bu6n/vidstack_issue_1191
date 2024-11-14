defmodule VidstackIssue1191Web.Live2 do
  use VidstackIssue1191Web, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <h1 class="text-xl font-bold">Page 2</h1>
    """
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, socket}
  end
end
