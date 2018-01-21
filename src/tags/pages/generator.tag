<generator>
  <div class="sk-wave" ref="wave" if="{ loading }">
    <div class="sk-rect sk-rect1"></div>
    <div class="sk-rect sk-rect2"></div>
    <div class="sk-rect sk-rect3"></div>
    <div class="sk-rect sk-rect4"></div>
    <div class="sk-rect sk-rect5"></div>
  </div>
  <br>
  <div class="columns is-multiline is-centered is-mobile" if="{ !loading }">
    <div class="column is-one-quarter" each="{ image }">
      <logo-image class="is-centered" attachment="{ doc._attachments }"></logo-image>
    </div>
  </div>
  <script>
    import pouchdb from '../../scripts/pouchdb'
    const logos = pouchdb('logos')

    this.loading = true

    this.getRandomDoc = async () => {
      return (await logos.query('random/random', {
        startkey: Math.random(),
        limit: 1,
        include_docs: true,
        attachments: true,
        binary: true
      })).rows[0]
    }

    this.on('mount', async () => {
      this.refs.wave.scrollIntoView()
      this.image = await Promise.all([this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc(), this.getRandomDoc()])
      console.log(this.image)
      this.loading = false
      this.update()
    })
  </script>
</generator>
