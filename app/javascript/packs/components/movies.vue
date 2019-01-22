<template>
  <div id="movies">
    <ul>
      <li v-for="movie in movies" v-bind:key="movie.id">
        <div>{{movie.id}}</div>
        <div>{{movie.title}}</div>
        <div>{{movie.created_at}}</div>
      </li>
    </ul>
  </div>
</template>

<script lang="ts">
  import axios from 'axios'
  import { Vue, Component } from 'vue-property-decorator';
  import VueRouter from 'vue-router'

  Vue.use(VueRouter);

  @Component
  export default class Movies extends Vue {
    message: string = "movies";
    movies: any = [];

    async mounted(): Promise<void> {
      await this.fetchMovies();
    }

    async fetchMovies(): Promise<void> {
      await axios.get('/api/v1/movies').then((response) => {
        response.data.data.map((movie: any) => {
          this.movies.push(movie);
        })
      }, (error) => {
        console.log(error);
      });
    }
  }
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
