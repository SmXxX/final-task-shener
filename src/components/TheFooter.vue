<template>
  <div class="main" style="background-color: #1f1f39; padding: 200px 0 200px 0">
    <div
      class="container dots-container"
      style="margin-top: -250px; background-color: #fff0e9; border-radius: 25px"
    >
      <img src="../assets/FooterImages/Group.png" class="dots" alt="" />

      <div class="row">
        <div class="col col-lg-6 col-sm-12 order-lg-3 mb-5">
          <img
            src="../assets/FooterImages/twoPhones.png"
            alt=""
            style="margin-top: -15px"
          />
        </div>
        <div class="col col-lg-6 col-sm-12">
          <div class="trusted-heading text-dark">
            Lets try out Onir <br />
            for free
          </div>
          <span class="trusted-sec-heading"
            >Download our latest version and please don’t <br />
            forget to rate :)</span
          >
          <div class="mt-5">
            <img
              src="../assets/FooterImages/appStore.png"
              alt=""
              class="mx-3 my-5"
            />
            <img
              src="../assets/FooterImages/playStore.png"
              alt=""
              class="my-5"
            />
          </div>
        </div>
      </div>
      <img src="../assets/FooterImages/wave.png" class="wave" alt="" />
      <img
        src="../assets/FooterImages/ellipse-footer.png"
        class="ellipse-footer"
        alt=""
      />
    </div>
    <div class="container mt-3">
      <div class="row">
        <div class="col-12 subs">Subscribe Newsletter</div>
        <div class="col-12 mt-2 suspen">
          Suspendisse tincidunt sapien feliuentum
        </div>
      </div>
      <div class="row my-5">
        <div class="col-12">
          <input
            type="text"
            placeholder="Enter your email addresss"
            class="input-text"
          />
          <input type="submit" value="Submit" class="btn-sub mx-4" />
        </div>
      </div>
    </div>
    <div class="container p-4">
      <div class="row">
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <!-- <router-link class="link" to="/" style="text-decoration: none">
            <h5 class="text text-light">Onir</h5>
          </router-link> -->
          <a
            class="link text-light"
            style="text-decoration: none"
            href="http://localhost:8080/"
            >Onir</a
          >

          <ul class="list-unstyled mb-0">
            <li>
              <a href="mailto:" class="link">hello@onirapp.com</a>
            </li>
            <li>
              <a href="tel" class="link">+1-800-123 4567</a>
            </li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <a class="link text-light" href="http://localhost:8080/#features"
            >Company</a
          >

          <ul class="list-unstyled">
            <li>
              <a class="link" href="/">About</a>
            </li>
            <li>
              <a class="link" href="/">Services</a>
            </li>
            <li>
              <a class="link" href="/">Careers</a>
            </li>
            <li>
              <a class="link" href="/page-blog">Blog</a>
            </li>
            <li>
              <a class="link" href="http://localhost:8080/#prices">Pricing</a>
            </li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <a class="link text-light" href="/page-contact">Contact</a>

          <ul class="list-unstyled mb-0">
            <li>
              <a class="link" href="http://localhost:8080/#prices">Help</a>
            </li>
            <li>
              <a class="link" href="http://localhost:8080/#faqs">FAQs</a>
            </li>
            <li>
              <a class="link" href="/">Press</a>
            </li>
            <li>
              <a class="link" href="http://localhost:8080/#prices">Pricing</a>
            </li>
            <li>
              <a class="link" href="http://localhost:8080/#trusted">Partners</a>
            </li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <div>
            <a href="http://facebook.com" target=":blank">
              <img
                src="../assets/FooterImages/Facebook.png"
                alt=""
                style="margin-right: 15px"
              />
            </a>
            <a href="http://twitter.com" target=":blank">
              <img
                src="../assets/FooterImages/Twitter.png"
                alt=""
                style="margin-right: 15px"
              />
            </a>
            <a href="http://instagram.com" target=":blank">
              <img src="../assets/FooterImages/Instagram.png" alt="" />
            </a>
          </div>

          <div class="try my-3" style="color: white">Let's try out</div>

          <div class="my-3">
            <a href="http://apple.com" target=":blank">
              <img src="../assets/FooterImages/BtnAppStore.png" alt="" />
            </a>
          </div>
          <div>
            <a href="http://play.google.com" target=":blank">
              <img src="../assets/FooterImages/BtnPlayStore.png" alt="" />
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.subs {
  font-family: "Roboto";
  font-style: normal;
  font-weight: 700;
  font-size: 50px;
  line-height: 59px;
  color: #ffffff;
}
.suspen {
  font-family: "Roboto";
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 28px;
  color: rgba(255, 255, 255, 0.5);
}
.btn-sub {
  width: 150px;
  height: 65px;

  background: #fff0e9;
  border-radius: 20px;
}
.input-text {
  width: 308px;
  height: 65px;
  border: 2px solid rgba(255, 255, 255, 0.2);
  box-sizing: border-box;
  background-color: transparent;
  border-radius: 20px;
}
.link {
  font-family: "Roboto";
  font-style: normal;
  font-weight: 500;
  font-size: 18px;
  line-height: 44px;
  text-decoration: none;
  text-align: right;
  color: rgba(255, 255, 255, 0.5);
}
.try {
  font-family: "Roboto";
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 28px;

  color: #ffffff;
}
.dots-container {
  position: relative;
  .dots {
    position: absolute;
    top: 0;
    left: 0;
    transform: translate(-150%, -30%);
    z-index: 1;
  }
  .wave {
    position: absolute;
    right: 0;
    bottom: 0;
    transform: translate(50%, -100%);
    z-index: 0;
  }
  .ellipse-footer {
    position: absolute;
    left: 0;
    transform: translate(-150%, 100%);
  }
}
</style>
