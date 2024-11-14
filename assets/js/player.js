import { VidstackPlayer, VidstackPlayerLayout } from "vidstack/global/player";

/**
 * A hook used to display a video player.
 *
 * ## Props
 *    * `title` - title of the video
 *    * `src` - source of the video
 *    * `poster` - poster of the video
 */
const Player = {
  mounted() {
    console.log("Player mounted");

    VidstackPlayer.create({
      target: this.el,
      title: "Sprite Fight",
      posterLoad: "eager",
      src: {
        src: "https://files.vidstack.io/sprite-fight/720p.mp4",
        type: "video/mp4",
      },
      poster: "https://files.vidstack.io/sprite-fight/thumbnails.vtt",
      layout: new VidstackPlayerLayout(),
    }).then((player) => {
      this.player = player;
      window.player = player;
    });
  },
  updated() {
    console.log("Player updated");

    this.player.src = {
      src: this.props.src,
      type: "video/mp4",
    };

    this.player.poster = this.props.poster;
  },
  destroyed() {
    console.log("Player destroyed");
  },
};

export { Player };
