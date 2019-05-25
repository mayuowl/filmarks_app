import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import Movies from '../components/movies.vue'

Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/', component: Movies },
  ],
})
