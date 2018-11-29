<template>
  <div id="header">
    <p>{{message}}</p>
  </div>
</template>

<script lang="ts">
  import { Vue, Component } from 'vue-property-decorator';

  @Component
  export default class Header extends Vue {
    message: string = "header";
  }
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
