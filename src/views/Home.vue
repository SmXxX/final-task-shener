<template>
  <div class="home">
    <section class="hero">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12 heading-home">
            Jump Start Your <br />
            Business to Next Level.
          </div>
          <div class="col-12 mt-5">
            <span class="small-heading-home"
              ><div>
                Improving your small business's growth through Onir app. It also
                help to improve your
              </div>
              customer service and make more money quickly.</span
            >
          </div>
          <div class="container">
            <div class="row d-flex justify-content-center">
              <div class="col col-lg-3 col-sm-12">
                <img
                  src="../assets/HomeImages/appStore.png"
                  alt=""
                  class="buttons-hero mt-4"
                />
              </div>
              <div class="col col-lg-3 col-sm-12">
                <img
                  src="../assets/HomeImages/playStore.png"
                  alt=""
                  class="buttons-hero mt-4"
                />
              </div>
            </div>
            <div style="position: relative">
              <img
                src="../assets/HomeImages/Subtract.png"
                alt=""
                class="subtract"
              />
              <img
                src="../assets/HomeImages/Vector.png"
                alt=""
                class="vector"
              />
              <img
                src="../assets/HomeImages/Ellipse.png"
                alt=""
                class="ellipse"
              />
              <img
                src="../assets/HomeImages/Ellipse2.png"
                alt=""
                class="ellipse2"
              />
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="phones">
      <div class="spacing"></div>
      <Carousel class="carousel" v-slot="{ currentSlide }">
        <CarouselSlide v-for="(slide, index) in carouselSlides" :key="index">
          <div class="container">
            <div class="row">
              <div v-show="currentSlide === index + 1" class="slide-info">
                <div
                  class="container-fluid d-flex justify-content-around"
                  style="max-weight: 100%; overflow-x: hidden"
                >
                  <img
                    src="../assets/HomeImages/main-phone.png"
                    class="main-phone"
                    style="max-width: 100%"
                    alt=""
                  />
                  <img src="../assets/HomeImages/Phone1.png" alt="" />
                  <img src="../assets/HomeImages/Phone2.png" alt="" />
                  <img src="../assets/HomeImages/Phone3.png" alt="" />
                  <img
                    class="slide-images"
                    :src="require(`../assets/HomeImages/${slide}.png`)"
                    alt=""
                  />
                  <img src="../assets/HomeImages/Phone5.png" alt="" />
                  <img src="../assets/HomeImages/Phone6.png" alt="" />
                  <img src="../assets/HomeImages/Phone7.png" alt="" />
                </div>
              </div>
            </div>
          </div>
        </CarouselSlide>
      </Carousel>
    </section>
    <section class="trusted mt-5" id="trusted">
      <div class="container">
        <div class="trusted-heading mb-5">Trusted By</div>
        <span class="trusted-sec-heading"
          >Onir has been featured on World most famous brands in Top 20 list.
          People are love our
          <div>services most and get benefits from it.</div>
        </span>
        <div class="container-fluid d-flex logos mt-5">
          <img src="../assets/HomeImages/Logos.png" alt="" />
        </div>
      </div>
    </section>
    <section class="phone-screenshot" id="how-works" style="margin-top: 150px">
      <div style="margin-bottom: 150px">
        <div class="trusted-heading">How Onir Works</div>
        <span class="trusted-sec-heading"
          >App works very smoothly with your requirements and its easy to
          install and
          <div>register to you and your clients.</div></span
        >
      </div>
      <div class="container bg-info rounded">
        <div class="row">
          <div class="col col-lg-4 col-sm-12 order-lg-2">
            <img
              src="../assets/HomeImages/PhoneScreenshot.png"
              alt=""
              class="screenshot mb-3"
            />
          </div>
          <div class="col col-lg-4 col-sm-12 my-5 order-lg-3">
            <div>
              <img src="../assets/HomeImages/touch_app_black_24dp.png" alt="" />
              <div class="get-in-touch">Get in Touch</div>
              <span class="trusted-sec-heading"
                >Nullam tincidunt, purus sit amet viverra <br />
                auctor, <br />
                quam neque dapibus dui,</span
              >
            </div>
            <div class="my-5">
              <img src="../assets/HomeImages/thumb_up_black_24dp.png" alt="" />
              <div class="reviewandconfirm">Review and Confirm</div>
              <span class="trusted-sec-heading"
                >Nullam tincidunt, purus sit <br />
                amet viverra auctor, quam <br />
                neque dapibus dui,</span
              >
            </div>
          </div>

          <div class="col col-lg-4 col-sm-12 my-5">
            <div>
              <img src="../assets/HomeImages/tab_black_24dp.png" alt="" />
              <div class="get-in-touch">Receive Demo screens</div>
              <span class="trusted-sec-heading"
                >Nullam tincidunt, purus sit <br />
                amet viverra auctor, quam <br />
                neque dapibus dui,</span
              >
            </div>
            <div class="my-5">
              <img src="../assets/HomeImages/launch_black_24dp.png" alt="" />
              <div class="reviewandconfirm">Setup and Launch</div>
              <span class="trusted-sec-heading"
                >Nullam tincidunt, purus sit <br />
                amet viverra auctor, quam <br />
                neque dapibus dui,</span
              >
            </div>
          </div>
        </div>
      </div>
      <div class="container mb-3">
        <div class="row">
          <div class="col-12 trusted-heading">Enjoy with Onir!</div>
          <span class="trusted-sec-heading mb-2"
            >Nullam tincidunt, purus sit amet viverra auctor, quam neque dapibus
            dui,</span
          >
          <img class="mt-5" src="../assets/HomeImages/line.png" alt="" />
        </div>
      </div>
    </section>
    <section class="features my-5" id="features">
      <div class="trusted-heading">Few Awesome Features</div>
      <span class="trusted-sec-heading"
        >Improving your small business's growth through Onir app. It also help
        to improve your customer service and make more money quickly.</span
      >
      <div class="container">
        <div class="row">
          <div class="col col-lg-6 col-sm-12 mt-5">
            <img src="../assets/HomeImages/mobileScreenshot.png" alt="" />
          </div>
          <div class="col col-lg-6 col-sm-12">
            <div>
              <div class="trusted-heading" style="text-align: left">
                <div class="amet">DOLOR SIT AMET</div>
                Make your Life Easy And Smooth with Onir
              </div>
              <p class="trusted-sec-heading my-4" style="text-align: left">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et
                lectus quam. In hac habitasse platea dictumst. Curabitur sit
                amet neque tincidunt purus eleifend consequat vel ut nib.
              </p>
              <ul class="ul-awesome" style="text-align: left">
                <li
                  class="li-awesome trusted-sec-heading"
                  style="text-align: left"
                >
                  Integer libero felis
                </li>
                <li
                  class="li-awesome trusted-sec-heading"
                  style="text-align: left"
                >
                  Duis egestas scelerisque porttitor
                </li>
                <li
                  class="li-awesome trusted-sec-heading"
                  style="text-align: left"
                >
                  Nullam finibus vulputate felis
                </li>
                <li
                  class="li-awesome trusted-sec-heading"
                  style="text-align: left"
                >
                  Morbi viverra risus vitae felis
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col col-lg-6 col-sm-12 mt-5 order-lg-2">
            <img src="../assets/HomeImages/AhoyScreenshot.png" alt="" />
          </div>
          <div class="col col-lg-6 col-sm-12">
            <div>
              <div class="trusted-heading" style="text-align: left">
                <div class="amet">DOLOR SIT AMET</div>
                Boost Your Productivity
              </div>
              <p class="trusted-sec-heading my-4" style="text-align: left">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et
                lectus quam. In hac habitasse platea dictumst. Curabitur sit
                amet neque tincidunt purus eleifend consequat vel ut nib.
              </p>
            </div>
            <div>
              <img
                src="../assets/HomeImages/appStore.png"
                class="mb-3"
                alt=""
              />
              <br />
              <img src="../assets/HomeImages/playStore.png" alt="" />
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="why-choose my-5">
      <div class="container rounded" style="background-color: #fff0e9">
        <div class="row">
          <div class="amet mt-5">DOLOR SIT AMET</div>
          <div class="trusted-heading">Why Choose Onir</div>
          <span class="trusted-sec-heading mt-3 mb-5"
            >We provide the answers your need and put fulfil them into effect
            also we put customer’s <br />
            satisfaction above everything else.</span
          >
          <div class="col col-lg-4 col-sm-12">
            <img src="../assets/HomeImages/settings.png" alt="" />
            <div
              class="trusted-heading mt-3"
              style="font-size: 35px; padding-top: 0"
            >
              Easy Manage
            </div>
            <span class="trusted-sec-heading mb-5"
              >Nullam tincidunt, purus sit amet <br />
              viverra auctor, quam neque <br />
              dapibus duieyri.</span
            >
          </div>
          <div class="col col-lg-4 col-sm-12">
            <img src="../assets/HomeImages/police.png" alt="" />
            <div
              class="trusted-heading mt-3"
              style="font-size: 35px; padding-top: 0"
            >
              Security
            </div>
            <span class="trusted-sec-heading mb-5"
              >Nullam tincidunt, purus sit amet <br />
              viverra auctor, quam neque <br />
              dapibus duieyri.</span
            >
          </div>
          <div class="col col-lg-4 col-sm-12">
            <img src="../assets/HomeImages/paper.png" alt="" />
            <div
              class="trusted-heading mt-3"
              style="font-size: 35px; padding-top: 0"
            >
              Clean UI
            </div>
            <div class="trusted-sec-heading mb-5">
              Nullam tincidunt, purus sit amet <br />
              viverra auctor, quam neque <br />
              dapibus duieyri.
            </div>
          </div>
        </div>
        <div class="row row-img">
          <div class="col col-lg-4 col-sm-12 choose-img">
            <img src="../assets/HomeImages/Download.png" alt="" />
          </div>
          <div class="col col-lg-4 col-sm-12 choose-img">
            <img src="../assets/HomeImages/Reviews.png" alt="" />
          </div>
          <div class="col col-lg-4 col-sm-12 choose-img">
            <img src="../assets/HomeImages/Followers.png" alt="" />
          </div>
        </div>
      </div>
    </section>
    <section class="peopleLoves">
      <div class="container">
        <div class="trusted-heading mb-5">People Loves Onir</div>
        <span class="trusted-sec-heading"
          >We love our clients. Here are just a few of the amazing testimonials
          about our great results, <br />
          personable services and knowledge.</span
        >

        <!-- <ReviewCarousel class="carousel mt-5" v-slot="{ currentSlide }">
          <ReviewCarouselSlide
            v-for="(slide, index) in peopleSlides"
            :key="index"
          >
            <div class="container">
              <div class="row">
                <div v-show="currentSlide === index + 1" class="slide-info">
                  <img
                    class="people-images"
                    :src="require(`../assets/HomeImages/${slide}.jpg`)"
                    alt=""
                  />
                </div>
              </div>
            </div>
          </ReviewCarouselSlide>
        </ReviewCarousel> -->
      </div>
    </section>
    <section
      class="simplePlans mt-5"
      id="prices"
      style="background-color: rgba(255, 240, 233, 0.5); padding-bottom: 200px"
    >
      <div class="container">
        <div class="row">
          <div class="trusted-heading">
            Simple, Transparent Plans. Let Start with Onir.
          </div>
          <span class="trusted-sec-heading mt-3"
            >Choose a plan that works for you.</span
          >
          <div class="mt-3">
            <img src="../assets/HomeImages/duration.png" alt="" />
          </div>
          <div class="container-fluid d-flex planTable mt-5">
            <img src="../assets/HomeImages/PlanTable.png" alt="" />
          </div>
        </div>
      </div>
    </section>
    <section class="frequently" id="faqs">
      <div class="container mb-5 pb-5">
        <div class="row my-4">
          <div class="trusted-heading my-5">Frequently Asked Questions</div>
          <div class="col col-lg-6 col-sm-12">
            <span class="trusted-sec-heading" style="font-weight: 700"
              >How can I pay?</span
            >
          </div>
          <div class="col col-lg-6 col-sm-12">
            <div class="trusted-sec-heading mb-3">
              You can make payment via credit card, debit card, <br /><img
                src="../assets/HomeImages/ans.png"
                alt=""
              />
              net banking, UPI transfer or google pay etc. Nunc sit <br />
              amet justo odio. In ac nibh in nisi pellentesque.
            </div>
          </div>
          <img src="../assets/HomeImages/line.png" alt="" />
        </div>
        <div class="row my-4">
          <div class="col col-lg-6 col-sm-12">
            <span class="trusted-sec-heading" style="font-weight: 700"
              >Where do I go to setup an account?</span
            >
          </div>
          <div class="col col-lg-6 col-sm-12">
            <div class="trusted-sec-heading mb-3">
              Curabitur sed sem accumsan libero fringilla posuere <br /><img
                src="../assets/HomeImages/ans.png"
                alt=""
              />
              congue ut sapien. Suspendisse potenti. Donec quis euismod velit.
              Sed ut velit non justo feugiat malesuada vitae non ligula.
            </div>
          </div>
          <img src="../assets/HomeImages/line.png" alt="" />
        </div>
        <div class="row my-4">
          <div class="col col-lg-6 col-sm-12">
            <span class="trusted-sec-heading" style="font-weight: 700"
              >What is process to get a refund?</span
            >
          </div>
          <div class="col col-lg-6 col-sm-12">
            <div class="trusted-sec-heading mb-3">
              If you have made payment, but haven’t received the <br /><img
                src="../assets/HomeImages/ans.png"
                alt=""
              />
              download link with the purchase, you can raise a ticket our expert
              will get back as soon as possible on your registered email or
              write to us support@onirapp.com
            </div>
          </div>
          <img src="../assets/HomeImages/line.png" alt="" />
        </div>
        <div class="row my-4">
          <div class="col col-lg-6 col-sm-12">
            <span class="trusted-sec-heading" style="font-weight: 700"
              >How can I cancel my account?</span
            >
          </div>
          <div class="col col-lg-6 col-sm-12">
            <div class="trusted-sec-heading mb-3">
              You can cancel your account any time. You are free <br /><img
                src="../assets/HomeImages/ans.png"
                alt=""
              />
              for it or if you have any questions about the app you can write to
              us at complaint@onirapp.com
            </div>
          </div>
          <img src="../assets/HomeImages/line.png" alt="" />
        </div>
        <div class="row my-4">
          <div class="col col-lg-6 col-sm-12">
            <span class="trusted-sec-heading" style="font-weight: 700"
              >Can I develop a website or personal page along with Onir
              app?</span
            >
          </div>
          <div class="col col-lg-6 col-sm-12">
            <div class="trusted-sec-heading mb-3">
              Orci varius natoque penatibus et magnis dis <br /><img
                src="../assets/HomeImages/ans.png"
                alt=""
              />
              parturient montes, nascetur ridiculus mus. Praesent molestie justo
              vitae viverra porttitor. Quisque tincid unt leo et consequat
              consequat. Mauris euismod pharetra velit ac tristique. Fusce orci
              turpis, mattis ut bibendum a, dictum nec massa.
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
// @ is an alias to /src
import "../components/app.scss";
import Carousel from "../components/Carousel.vue";
import CarouselSlide from "../components/CarouselSlide.vue";
import ReviewCarousel from "../components/ReviewCarousel.vue";
import ReviewCarouselSlide from "../components/ReviewCarouselSlide.vue";

export default {
  name: "Home",
  components: {
    Carousel,
    CarouselSlide,
    ReviewCarousel,
    ReviewCarouselSlide,
  },
  setup() {
    const carouselSlides = [
      "Phone1",
      "Phone2",
      "Phone3",
      "Phone4",
      "Phone5",
      "Phone6",
      "Phone7",
    ];

    // const peopleSlides = [
    //   "person1",
    //   "person2",
    //   "person3",
    //   "person4",
    //   "person5",
    //   "person6",
    //   "person7",
    // ];
    return {
      carouselSlides,
      // peopleSlides,
    };
  },
};
</script>

<style lang="scss" scoped>
.carousel {
  position: relative;
  max-height: 50vh;
  height: 100vh;
  margin-top: -40px;
  .slide-info {
    position: absolute;
    top: 0;
    left: 0;
  }
  .main-phone {
    position: absolute;
    z-index: 1;
    transform: translateX(-50%);
    left: 50%;
    width: 571px;
    height: 565px;
  }
}
.logos img {
  width: 100%;
  min-width: 500px;
  @media screen and (max-width: 768px) {
    animation: animate 8s linear infinite;
  }
}
@keyframes animate {
  0% {
    transform: translateX(-100%);
  }
  100% {
    transform: translateX(100%);
  }
}
.logos {
  overflow: hidden;
}
.simplePlans {
  .planTable img {
    width: 100%;
    min-width: 500px;
    @media screen and (max-width: 768px) {
      animation: animate 8s linear infinite;
    }
  }
  @keyframes animate {
    0% {
      transform: translateX(-100%);
    }
    100% {
      transform: translateX(100%);
    }
  }
  .planTable {
    overflow: hidden;
  }
}
.peopleLoves {
  .people-images {
    border-radius: 50%;
  }
}
</style>
