<page-router>
  <router>
    <route path="/">
      <home></home>
    </route>
    <route path="/aboutUs">
      <aboutUs></aboutUs>
    </route>
    <route path="/generator">
      <generator></generator>
    </route>
    <route path="*">
      <notFound></notFound>
    </route>
    <route path="*/*">
      <notFound></notFound>
    </route>
  </router>
</page-router>
