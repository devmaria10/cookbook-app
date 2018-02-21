/* global Vue, VueRouter, axios */

var SamplePage = {
  template: "#sample-page",
  data: function() {
    return {
      message: "This is my Sample Page"
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var RandomPage = {
  template: "#random-page",
  data: function() {
    return {
      message: "This is my Random Page"
    };
  },
  created: function() {},
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: SamplePage },
    { path: "/random", component: RandomPage },
    { path: "/signup", component: SignUpPage },
    { path: "/login", component: LoginPage },
    { path: "/logout", component: LogoutPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});

