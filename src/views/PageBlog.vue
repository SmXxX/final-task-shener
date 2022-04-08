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
      <div v-if="onePost" class="container-fluid px-md-4">
        <div class="row mx-0 px-3 mx-md-5 mb-5" style="margin-top: -60px">
          <div class="col col-lg-6 col-sm-12">
            <router-link
              style="padding-left: 0"
              :to="{ name: 'PageSingle', params: { id: onePost.post_id } }"
            >
              <img :src="onePost.post_image" />
            </router-link>
          </div>
          <div class="col col-lg-6 col-sm-12">
            <router-link
              style="text-decoration: none; padding-left: 0"
              :to="{ name: 'PageSingle', params: { id: onePost.post_id } }"
            >
              <div
                class="trusted-heading"
                style="padding-top: 0; text-align: left"
              >
                {{ onePost.post_title }}
              </div>
            </router-link>
            <div class="trusted-sec-heading mt-3" style="text-align: left">
              Duis orci nisl, ornare non diam id, dapibus faucibus urna. <br />
              Vestibulum tristique posuere iaculis. Suspendisse orci tortor,
              <br />
              auctor non luctus sed, vulputate sit amet libero. Maecenas <br />
              congue fringilla justo molestie dapibus. Cras quis erat in velit
              <br />
              rhoncus mollis. Phasellus eu enim dignissim an
              <br />
              <div class="mt-3">
                <router-link
                  style="text-decoration: none; padding-left: 0"
                  :to="{ name: 'PageSingle', params: { id: onePost.post_id } }"
                  ><span class="trusted-sec-heading" style="color: #0e7dff"
                    >Read Story</span
                  ></router-link
                >
              </div>
            </div>
            <div class="d-flex align-items-center">
              <img src="../assets/BlogImages/robert.png" alt="..." />
              <div class="ms-2">
                <span class="trusted-heading" style="font-size: 20px">
                  By Robert Long
                </span>
                <br />
                <span class="trusted-sec-heading">30 min ago</span>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="container-fluid">
        <div class="d-flex flex-column align-items-center">
          <div class="row px-5 mx-5">
            <div
              class="col-lg-4 col-md-6 col-sm-12 mb-5 pb-5"
              v-for="post in posts"
              :key="post.post_id"
            >
              <router-link
                :to="{ name: 'PageSingle', params: { id: post.post_id } }"
              >
                <div class="blog-photos px-3">
                  <img :src="post.post_image" alt="" />
                </div>
              </router-link>
              <div
                class="mt-5 trusted-sec-heading"
                style="
                  font-size: 16px;
                  text-align: left;
                  color: rgba(31, 31, 57, 0.5);
                "
              >
                {{ post.post_upload }}
              </div>
              <router-link
                style="text-decoration: none"
                :to="{ name: 'PageSingle', params: { id: post.post_id } }"
              >
                <div
                  class="trusted-heading"
                  style="font-size: 20px; text-align: left; padding-top: 0"
                >
                  {{ post.post_title }}
                </div>
              </router-link>
              <br />
              <div
                class="col-6 trusted-sec-heading"
                style="
                  font-size: 16px;
                  text-align: left;
                  color: rgba(31, 31, 57, 0.5);
                "
              >
                {{ post.post_description }}
              </div>
              <br />
              <div class="mt-3">
                <router-link
                  style="text-decoration: none; padding-left: 0"
                  :to="{ name: 'PageSingle', params: { id: onePost.post_id } }"
                  ><div
                    class="trusted-sec-heading"
                    style="color: #0e7dff; text-align: left"
                  >
                    Read Story
                  </div></router-link
                >
              </div>
            </div>
          </div>
        </div>
        <a href="/">
          <img src="../assets/BlogImages/previous.png" class="mb-5 pb-5" alt=""
        /></a>
      </div>
      <div class="d-none">
        <img src="../assets/BlogImages/blogImage.png" alt="" />
        <img src="../assets/BlogImages/blogImage1.png" alt="" />
        <img src="../assets/BlogImages/blogImage2.png" alt="" />
        <img src="../assets/BlogImages/blogImage3.png" alt="" />
        <img src="../assets/BlogImages/blogImage4.png" alt="" />
        <img src="../assets/BlogImages/blogImage5.png" alt="" />
        <img src="../assets/BlogImages/blogImage6.png" alt="" />
        <img src="../assets/BlogImages/blogImage7.png" alt="" />
        <img src="../assets/BlogImages/blogImage8.png" alt="" />
        <img src="../assets/BlogImages/blogImage9.png" alt="" />
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
      onePost: "",
      posts: [],
    };
  },
  created() {
    this.getPost();
  },
  methods: {
    async getPost() {
      try {
        let result = await axios.get("http://localhost:3000/getpostvue/");
        this.onePost = result.data[0];
        result.data.shift();
        this.posts = result.data;
        console.log(this.posts);
        // console.log(result);
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>

<style lang="scss" scoped>
.blog-photos {
  display: flex;
  img {
    width: 100%;
  }
}
</style>
