<template>
  <div class="PageRegister mb-5" style="padding-bottom: 20px">
    <h1>Register page</h1>
    <form @submit.prevent action="pageRegister">
      <div class="container">
        <div class="row">
          <div class="col-12"><label for="username">Username</label></div>
          <div class="col-12">
            <input
              v-model="username"
              type="text"
              placeholder="Username"
              id="username"
              name="username"
            />
          </div>
        </div>
        <div class="row">
          <div class="col-12"><label for="email">Email</label></div>
          <div class="col-12">
            <input
              v-model="email"
              type="email"
              placeholder="Email"
              id="email"
              name="email"
            />
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <label for="password">Password</label>
          </div>
          <div class="col-12">
            <input
              v-model="password"
              type="password"
              placeholder="Password"
              id="password"
              name="password"
            />
          </div>
        </div>
        <input
          type="submit"
          class="btn"
          v-on:click="insertUser()"
          value="Register"
        />
        <p>You already have an account?</p>
        <router-link to="/PageLogin">Sign in</router-link>
      </div>
    </form>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      insertuser: "http://localhost:3000/insertuservue",
      username: "",
      password: "",
      email: "",
    };
  },

  methods: {
    async insertUser() {
      if (
        document.getElementById("username").value === "" ||
        document.getElementById("password").value === "" ||
        document.getElementById("email").value === ""
      ) {
        alert("Please fill all fields");
        return false;
      }
      try {
        await axios
          .post(this.insertuser, {
            user_name: this.username,
            user_password: this.password,
            user_email: this.email,
          })
          .then((response) => {
            return response.data;
          })
          .then((data) => {
            if (data === "Email already in use") {
              alert(data);
              return;
            }
            this.$router.push("/PageLogin");
          });
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>

<style scoped lang="scss">
input {
  height: 30px;
  padding: 5px 10px;
  font-size: 16px;
  border-radius: 5px;
  border: 1px solid gray;
}
.btn {
  margin: 15px 0 15px 0;
  font-size: 15px;
  color: white;
  background: #5f9ea0;
  border: none;
  border-radius: 5px;
}
label {
  color: black;
}
</style>
