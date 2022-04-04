<template>
  <div
    class="container-fluid navigation navBar"
    style="background-color: #fff0e9"
  >
    <nav
      class="navbar navbar-expand-lg navbar-light"
      v-bind:class="{ navbarOpen: show }"
    >
      <router-link class="link" to="/"
        ><img src="../assets/HeaderLogo/logo.png" alt="" class="logo"
      /></router-link>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
        @click.stop="toggleNavbar()"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div
        class="collapse navbar-collapse"
        id="navbarSupportedContent"
        v-bind:class="{ show: show }"
      >
        <div class="navbar-nav mr-auto">
          <a class="link" href="http://localhost:8080/#how-works"
            >How It Works</a
          >
          <a class="link" href="http://localhost:8080/#features">Features</a>
          <a class="link" href="http://localhost:8080/#prices">Pricing</a>

          <router-link class="link" to="/page-blog">Blog</router-link>
          <router-link class="link" to="/page-contact">Contact</router-link>
          <router-link class="link" to="/page-login">Login</router-link>
          <router-link class="link" to="/page-register">Sign Up</router-link>
        </div>
      </div>
    </nav>
  </div>
</template>
<script>
export default {
  template: "#navBar",
  props: {
    msg: String,
  },
  data() {
    return {
      show: true,
    };
  },
  methods: {
    toggleNavbar() {
      this.show = !this.show;
    },
  },
};
</script>

<style scoped lang="scss">
.navigation {
  display: flex;
  justify-content: center;
  a {
    padding: 20px;
  }
}
@media screen and (max-width: 768px) {
}
</style>
