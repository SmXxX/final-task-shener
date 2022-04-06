<template>
  <div class="main">
    <section class="blog-hero py-5">
      <div class="container">
        <div class="row">
          <span class="trusted-sec-heading">Get in touch!</span>
          <div class="trusted-heading my-3" style="padding-top: 0">
            Contact Us
          </div>
        </div>
      </div>
    </section>
    <section class="blog-sec-hero pb-5 mb-5">
      <div
        class="container bg-light"
        style="border-radius: 15px; margin-top: -25px"
      >
        <div class="row">
          <div class="trusted-sec-heading pt-4">
            Fill up the form below and our team will get back soon.
          </div>
          <div class="row py-3">
            <div class="col col-lg-4 col-sm-12 py-sm-3">
              <img
                src="../assets/SinglePost/Location.png"
                alt=""
                style="max-width: 100%; max-height: 100%"
              />
            </div>

            <div class="col col-lg-4 col-sm-12 py-sm-3">
              <img
                src="../assets/SinglePost/Phone.png"
                alt=""
                style="max-width: 100%; max-height: 100%"
              />
            </div>
            <div class="col col-lg-4 col-sm-12 py-sm-3">
              <img
                src="../assets/SinglePost/Email2.png"
                alt=""
                style="max-width: 100%; max-height: 100%"
              />
            </div>
          </div>
          <form @submit.prevent method="POST" action="send">
            <div class="row">
              <div
                class="trusted-heading py-3"
                style="font-size: 35px; padding-top: 0"
              >
                Email Us
              </div>
              <div class="row">
                <div class="col col-lg-6 col-sm-12 py-3">
                  <input
                    type="text"
                    placeholder="Name"
                    class="inputs"
                    v-model="name"
                    name="name"
                    id="name"
                  />
                </div>
                <div class="col col-lg-6 col-sm-12 py-3">
                  <input
                    type="email"
                    name="email"
                    class="inputs"
                    v-model="email"
                    placeholder="Email"
                    id="email"
                  />
                </div>
              </div>
              <div class="row">
                <div class="col col-lg-6 col-sm-12 py-3">
                  <input
                    type="text"
                    id="company"
                    class="inputs"
                    v-model="company"
                    name="company"
                    placeholder="Company name"
                  />
                </div>
                <div class="col col-lg-6 col-sm-12 py-3">
                  <select
                    name="country"
                    class="country inputs"
                    v-model="country"
                    id="country"
                  >
                    <option value="" disabled selected hidden>Country</option>

                    <option value="Bulgaria">Bulgaria</option>
                    <option value="Turkiye">Turkiye</option>
                    <option value="Serbia">Serbia</option>
                  </select>
                </div>
              </div>
              <div class="row">
                <div class="col col-lg-6 col-sm-12 py-3">
                  <input
                    type="number"
                    v-model="phone"
                    class="inputs"
                    name="phone"
                    id="number"
                    placeholder="Phone no"
                  />
                </div>
                <div class="col col-lg-6 col-sm-12 py-3">
                  <input
                    type="text"
                    class="inputs"
                    id="website"
                    v-model="website"
                    name="website"
                    placeholder="Website"
                  />
                </div>
              </div>
              <div class="row">
                <div class="col-12">
                  <textarea
                    class="message-input"
                    name="message"
                    v-model="message"
                    id="message"
                    placeholder="Message"
                    cols="30"
                    rows="10"
                  ></textarea>
                </div>
              </div>
              <div class="trusted-sec-heading my-4" style="text-align: left">
                By submitting this form you agree to our terms and conditions
                and our Privacy policy. Orci varius natoque penatibus et magnis
                dis paridiculus mus. Duis nisl ante, condimentum a faucibus
                posuere, feugiat eu ligula
              </div>
              <div class="row mb-4">
                <div class="col col-lg-5 col-sm-12">
                  <input
                    v-on:click="submit()"
                    type="submit"
                    class="submit"
                    value="Submit"
                  />
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "PageContact",

  data() {
    return {
      sendMail: "http://localhost:3000/send",
      name: "",
      email: "",
      company: "",
      country: "",
      phone: "",
      website: "",
      message: "",
    };
  },

  methods: {
    async submit() {
      let formData = {
        name: this.name,
        email: this.email,
        company: this.company,
        country: this.country,
        phone: this.phone,
        message: this.message,
        website: this.website,
      };
      if (
        this.name == "" ||
        this.email == "" ||
        this.company == "" ||
        this.phone == "" ||
        this.message == "" ||
        this.website == ""
      ) {
        alert("Please fill all fields!");
        return false;
      } else {
        alert("Mail sended!");
        location.reload();
      }
      try {
        await axios.post(this.sendMail, {
          name: this.name,
          email: this.email,
          company: this.company,
          country: this.country,
          phone: this.phone,
          message: this.message,
          website: this.website,
        });
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
select {
  font-family: "Roboto";
  font-style: normal;
  font-weight: 400;
  padding: 0 0 0 20px;
  font-size: 20px;
  line-height: 40px;
  color: rgba(31, 31, 57, 0.5);
}
.message-input {
  width: 1250px;
  height: 218px;
  background: rgba(255, 240, 233, 0.7);
  border-radius: 10px;
  max-height: 100%;
  max-width: 100%;
}
.submit {
  width: 345px;
  height: 89px;
  font-family: "Roboto";
  font-style: normal;
  font-weight: 700;
  font-size: 25px;
  line-height: 35px;
  text-align: center;
  color: #fff;
  background: #0e7dff;
  border-radius: 20px;
}
</style>
