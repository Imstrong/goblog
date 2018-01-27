import Vue from 'vue'
import file from './File.vue'

/* esling-disable no-new */
var vue = new Vue({
  el: '#app',
  render: h => h(file)
})
Vue.use({
  vue
})
