<template>
  <div class="PageLogin my-3" style="padding-bottom: 20px">
    <div class="container">
      <div class="row">
        <!-- <form @submit.prevent="handleSubmit()"> -->
        <h1 class="my-5">Login</h1>
        <div class="form-group">
          <input
            v-model="username"
            type="text"
            class="inputs"
            placeholder="Username"
            id="username"
            name="username"
          />
        </div>

        <div class="form-group my-3">
          <input
            v-model="password"
            class="inputs"
            type="password"
            placeholder="Password"
            id="password"
            name="password"
          />
        </div>
      </div>
      <input
        type="submit"
        class="btn btn-primary mb-5"
        v-on:click="handleSubmit()"
        value="Login"
      />
      <!-- </form> -->
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "PageLogin",
  data() {
    return {
      getuser: "http://localhost:3000/getuservue",
      updatetoken: "http://localhost:3000/updatetokenvue",
      username: "",
      password: "",
    };
  },

  created() {},
  methods: {
    async handleSubmit() {
      if (
        document.getElementById("username").value === "" ||
        document.getElementById("password").value === ""
      ) {
        alert("Please fill all fields");
        return false;
      }
      try {
        let result = await axios.post(this.getuser, {
          user_name: this.username,
          user_password: this.password,
        });
        if (
          result.data[0].user_name != this.username ||
          result.data[0].user_password != this.password
        ) {
          alert("Wrong credentials, please try again!");
          return false;
        }
        if (
          result.data[0].user_name == this.username &&
          result.data[0].user_password == this.password
        ) {
          await axios.put(this.updatetoken, {
            user_id: result.data[0].user_id,
            token: 1,
          });
          localStorage.setItem("token", "1");
          var value = {
            id: result.data[0].user_id,
            token: 1,
          };
          localStorage.setItem("token", JSON.stringify(value));
          localStorage.getItem("token");
          this.$router.push({ path: "/" });
        }
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.inputs {
  width: 516px;
  height: 89px;
  background: #ffffff;
  border: 1px solid #fff0e9;
  box-sizing: border-box;
  background: rgba(255, 240, 233, 0.7);
  border-radius: 25px;
  max-width: 100%;
  max-height: 100%;
}
::placeholder {
  font-family: "Roboto";
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  padding: 20px 0 15px 20px;
  line-height: 40px;
  color: rgba(31, 31, 57, 0.5);
}
</style>
