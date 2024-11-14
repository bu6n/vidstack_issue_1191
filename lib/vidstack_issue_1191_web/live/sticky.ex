defmodule VidstackIssue1191Web.Sticky do
  use VidstackIssue1191Web, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <div class="w-80 bg-gray-100">
      <h1>Sticky Panel</h1>

      <h2 class="mt-12">working &lt;video&gt; element</h2>
      <video src="https://files.vidstack.io/sprite-fight/720p.mp4" controls />

      <h2 class="mt-12">non-working &lt;vidstack&gt; element</h2>
      <media-player
        title="Sprite Fight"
        src="https://files.vidstack.io/sprite-fight/720p.mp4"
        keep-alive
      >
        <media-provider></media-provider>
        <media-video-layout thumbnails="https://files.vidstack.io/sprite-fight/thumbnails.vtt">
        </media-video-layout>
      </media-player>
    </div>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end
end
