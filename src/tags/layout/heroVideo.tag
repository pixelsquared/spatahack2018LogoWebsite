<hero-video class="hero-video">
  <script>
  const cloudinary = require('../../scripts/cloudinary')
  this.on('mount', () => {
    this.video = cloudinary.videoTag('343011110_rxxn0m', {autoplay: true, muted: true, loop: true, controls: false, quality: 50, audio_codec: 'none', width: window.innerWidth, effect: 'blur:200', crop: 'scale'}).toHtml()
    this.root.innerHTML = this.root.innerHTML + this.video
    console.log(this.video)
  })
  </script>
</hero-video>
