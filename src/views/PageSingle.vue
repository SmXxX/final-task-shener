<template>
  <div class="main">
    <section class="blog-hero py-5">
      <div class="container py-5">
        <div class="row">
          <div class="pb-2">
            <span
              class="trusted-sec-heading"
              style="color: blue; font-weight: 600"
              >Design</span
            >
            | 30 min ago
          </div>
          <h1 class="py-3">{{ post.post_title }}</h1>
          <div class="trusted-sec-heading pt-2" style="font-weight: 600">
            By Robert Long
          </div>
        </div>
      </div>
    </section>
    <section class="blog-sec-hero mb-5">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <img
              :src="post.post_image"
              alt=""
              style="
                width: 1100px;
                height: 586px;
                border-radius: 15px;
                margin-top: -20px;
                max-width: 100%;
                max-height: 100%;
              "
            />
            <div class="trusted-sec-heading my-5" style="text-align: left">
              <span style="font-weight: 600">{{ post.post_description }}</span>
              <br />
              Lorem ipsum dolor sit amet, consectetur adipisicing elit.
              Praesentium laborum alias, pariatur unde sapiente
              <br />
              debitis natus tempore voluptatum aut perferendis vel voluptates a.
              Nobis maiores vero minima fugiat at dolorem. Lorem ipsum dolor sit
              <br />
              amet, consectetur adipisicing elit. Maiores dolorem repellat
              magnam alias dolor perferendis, quos voluptate ut quisquam
              suscipit aperiam quo modi quam quaerat, voluptates dolores, quas
              tempora voluptatibus?
            </div>
          </div>
          <div class="col col-lg-6 col-sm-12 my-2">
            <img
              src="../assets/SinglePost/blog-photo.png"
              alt=""
              style="max-width: 100%; max-height: 100%"
            />
          </div>
          <div class="col col-lg-6 col-sm-12 my-2">
            <img
              src="../assets/SinglePost/blog-photo-2.png"
              alt=""
              style="max-width: 100%; max-height: 100%"
            />
          </div>
          <div class="col-12 trusted-sec-heading mt-5" style="text-align: left">
            Nulla rutrum tellus eget odio facilisis mattis. Nullam egestas
            efficitur mi, fringilla bibendum sem ultricies et. Vestibulum
            interdum elit neque, in pretium velit ornare eu. Maecenas ultrices
            lorem quis urna ullamcorper, vel tempus mauris rutrum. In metus
            enim, fermentum eget ipsum vel, aliquam vulputate eros. Quisque non
            justo risus. Praesent eu aliquet urna.
          </div>
          <div class="col-12 my-5">
            <img
              class="my-5"
              src="../assets/SinglePost/Testimonials.png"
              alt=""
              style="max-width: 100%; max-height: 100%"
            />
          </div>
          <div class="col-12 trusted-sec-heading" style="text-align: left">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
            blandit, justo cursus semper varius, mi est elementum mauris, sed
            posuere neque mi non purus. Curabitur cursus felis a vulputate
            condimentum. Curabitur blandit justo odio, vitae pulvinar massa
            tristique efficitur. Pellentesque laoreet magna metus. Morbi metus
            justo, fermentum mollis volutpat sollicitudin, blandit a ligula.
            Vivamus interdum massa felis. Proin pulvinar elementum ligula. Morbi
            nec orci gravida, varius ipsum quis, lacinia nunc. Etiam vitae nunc
            ullamcorper, tristique dui quis, dictum lorem. Nulla dapibus diam
            lacus, in tincidunt tellus sagittis vel. Morbi dictum porttitor leo.
            <br /><br />
            Nulla rutrum tellus eget odio facilisis mattis. Nullam egestas
            efficitur mi, fringilla bibendum sem ultricies et. Vestibulum
            interdum elit neque, in pretium velit ornare eu. Maecenas ultrices
            lorem quis urna ullamcorper, vel tempus mauris rutrum. In metus
            enim, fermentum eget ipsum vel, aliquam vulputate eros. Quisque non
            justo risus. Praesent eu aliquet urna.
          </div>
          <div class="col-12 mt-5">
            <img src="../assets/SinglePost/Tags.png" class="my-5" alt="" />
          </div>
        </div>
      </div>
    </section>
    <section class="comments my-5">
      <div class="container">
        <div class="row">
          <div class="trusted-heading">Leave a Comments</div>
          <div class="trusted-sec-heading">
            Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt,
            puincidunt, Vestibulum
          </div>
          <div class="row">
            <div class="col-12 mt-5 mb-4">
              <textarea
                name="Comments"
                id="comments"
                cols="30"
                rows="10"
                style="max-width: 100%; max-height: 100%"
                placeholder="Comments"
              ></textarea>
            </div>
            <div class="col col-lg-6 sol-sm-12 mt-2">
              <input
                type="text"
                placeholder="Name"
                class="comments-fields"
                style="max-width: 100%; max-height: 100%"
              />
            </div>
            <div class="col col-lg-6 sol-sm-12 mt-2">
              <input
                type="email"
                placeholder="Email"
                class="comments-fields"
                style="max-width: 100%; max-height: 100%"
              />
            </div>
            <div class="col col-lg-6 sol-sm-12 mt-2">
              <input
                type="number"
                placeholder="Phone no"
                class="comments-fields"
                style="max-width: 100%; max-height: 100%"
              />
            </div>
            <div class="col col-lg-6 sol-sm-12 mt-2">
              <input
                type="text"
                placeholder="Website"
                class="comments-fields"
                style="max-width: 100%; max-height: 100%"
              />
            </div>
          </div>
          <div class="row my-5">
            <div class="col col-lg-6 sol-sm-12 mt-2">
              <input
                type="submit"
                value="Post Comment"
                class="comments-btn trusted-sec-heading"
                style="max-width: 100%; max-height: 100%"
              />
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="reviews">
      <div class="container">
        <div class="row mb-5">
          <img
            class="my-3"
            src="../assets/SinglePost/Row.png"
            alt=""
            style="width: 1100px; max-width: 100%; max-height: 100%"
          /><img
            class="my-3"
            src="../assets/SinglePost/Row2.png"
            alt=""
            style="width: 1100px; max-width: 100%; max-height: 100%"
          /><img
            class="my-3"
            src="../assets/SinglePost/Row3.png"
            alt=""
            style="width: 1100px; max-width: 100%; max-height: 100%"
          />
        </div>
      </div>
    </section>
    <section class="related pb-5 mb-5">
      <div class="container">
        <div class="row mb-5">
          <div class="trusted-heading">Related Posts</div>
          <span class="trusted-sec-heading"
            >We would like to share with your knowledge, experiences and latest
            news</span
          >
          <div
            class="col col-lg-4 col-sm-12 my-4 d-flex justify-content-center"
          >
            <div class="card" style="width: 18rem; background-color: #ffe5e6">
              <div class="card-body">
                <h5 class="card-title trusted-heading" style="font-size: 25px">
                  Added Cool Features
                </h5>
                <p class="card-text trusted-sec-heading">
                  Nullam tincidunt, purus sit amet viverra auctor, quamque
                  incidunt, puincidunt, dapibus duieyri.
                </p>
                <router-link class="btn btn-primary" to="/page-blog"
                  >Blog</router-link
                >
              </div>
            </div>
          </div>
          <div
            class="col col-lg-4 col-sm-12 my-4 d-flex justify-content-center"
          >
            <div class="card" style="width: 18rem; background-color: #ffe5e6">
              <div class="card-body">
                <h5 class="card-title trusted-heading" style="font-size: 25px">
                  Awesome Works
                </h5>
                <p class="card-text trusted-sec-heading">
                  Nullam tincidunt, purus sit amet viverra auctor, quamque
                  incidunt, puincidunt, dapibus duieyri.
                </p>
                <router-link class="btn btn-primary" to="/page-blog"
                  >Blog</router-link
                >
              </div>
            </div>
          </div>
          <div
            class="col col-lg-4 col-sm-12 my-4 d-flex justify-content-center"
          >
            <div class="card" style="width: 18rem; background-color: #ffe5e6">
              <div class="card-body">
                <h5 class="card-title trusted-heading" style="font-size: 25px">
                  Looking cool at pink
                </h5>
                <p class="card-text trusted-sec-heading">
                  Nullam tincidunt, purus sit amet viverra auctor, quamque
                  incidunt, puincidunt, dapibus duieyri.
                </p>
                <router-link class="btn btn-primary" to="/page-blog"
                  >Blog</router-link
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "PageSingle",
  props: ["id"],
  data() {
    return {
      post: "",
      getsinglepost: "http://localhost:3000/getsinglepostvue/",
    };
  },
  created() {
    this.getSinglePost();
  },
  methods: {
    async getSinglePost() {
      try {
        let result = await axios.get(this.getsinglepost + this.id);
        this.post = result.data[0];
        console.log(result);
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>
