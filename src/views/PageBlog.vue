<template>
  <div class="main">
    <section class="blog-hero py-5">
      <div class="container">
        <div class="row">
          <span class="trusted-sec-heading">Checkout our Latest Stories</span>
          <div class="trusted-heading mt-3" style="padding-top: 0">Blog</div>
          <div class="my-5 pb-5">
            <input
              type="text"
              style="width: 450px; height: 89px; border-radius: 15px"
              placeholder="Search"
            /><input
              type="submit"
              value="Go"
              style="width: 150px; height: 89px; border-radius: 15px"
            />
          </div>
        </div>
      </div>
    </section>
    <section class="blog-sec-hero">
      <div
        class="container mb-5"
        style="margin-top: -50px"
        v-for="post in posts"
        :key="post.post_id"
      >
        <div class="row">
          <div class="col col-lg-6 col-sm-12 my-3">
            <img
              :src="post.post_image"
              alt=""
              style="width: 450px; height: 378px; border-radius: 15px"
            />
          </div>
          <div class="col col-lg-6 col-sm-12 mb-5" style="margin-top: -50px">
            <div class="trusted-heading">
              {{ post.post_title }} <br />
              <span class="trusted-sec-heading">{{
                post.post_description
              }}</span>
            </div>
            <br />
            <router-link
              style="text-decoration: none"
              :to="{ name: 'PageSingle', params: { id: post.post_id } }"
              ><span class="trusted-sec-heading" style="color: #0e7dff"
                >Read Story</span
              ></router-link
            >
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "PageBlog",
  data() {
    return {
      getpost: "http://localhost:3000/getpostvue/",
      posts: "",
    };
  },
  created() {
    this.getPost();
  },
  methods: {
    async getPost() {
      try {
        let result = await axios.get(this.getpost);
        this.posts = result.data;
        console.log(result);
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>
