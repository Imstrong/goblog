import Vue from 'vue'
import index from './Index.vue'

/* esling-disable no-new */
var vue = new Vue({
  el: '#app',
  render: h => h(index)
})
Vue.use({
  vue
})
