<logo-image>

  <div class="card">
    <div class="card-image">
      <figure class="image is-4by3">
        <img ref="image">
      </figure>
    </div>
    <div class="card-content">
      <div class="content">
        Lorem ipsum dolor sit amet.
      </div>
    </div>
  </div>

  <script>
    this.on('mount', async () => {
      console.log(this.opts.attachment)
      this.refs.image.src = URL.createObjectURL(this.opts.attachment[Object.keys(this.opts.attachment)[0]].data)
    })
  </script>
</logo-image>
