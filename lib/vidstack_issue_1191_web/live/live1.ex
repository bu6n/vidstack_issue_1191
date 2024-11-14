defmodule VidstackIssue1191Web.Live1 do
  use VidstackIssue1191Web, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <h1 class="text-xl font-bold">Page 1</h1>
    <div>
      Start the video on the right side and navigate to page 2. The HTML5 player continues playing while the vidstack player stops and adds elements in the timeline.
    </div>
    """
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, socket}
  end
end
