<template>
  <div class="main" style="background-color: #1f1f39; padding: 200px 0 200px 0">
    <div
      class="container rounded"
      style="margin-top: -250px; background-color: #fff0e9"
    >
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
              <h5 class="text-light">hello@onirapp.com</h5>
            </li>
            <li>
              <h5 class="text-light">+1-800-123 4567</h5>
            </li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-light mb-2">Company</h5>

          <ul class="list-unstyled">
            <li>
              <h5 class="text-light">About</h5>
            </li>
            <li>
              <h5 class="text-light">Services</h5>
            </li>
            <li>
              <h5 class="text-light">Careers</h5>
            </li>
            <li>
              <h5 class="text-light">Blog</h5>
            </li>
            <li>
              <h5 class="text-light">Pricing</h5>
            </li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-light">Contact</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <h5 class="text-light">Help</h5>
            </li>
            <li>
              <h5 class="text-light">FAQs</h5>
            </li>
            <li>
              <h5 class="text-light">Press</h5>
            </li>
            <li>
              <h5 class="text-light">Terms and Conditions</h5>
            </li>
            <li>
              <h5 class="text-light">Partners</h5>
            </li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <div>
            <img
              src="../assets/FooterImages/Facebook.png"
              alt=""
              style="margin-right: 15px"
            />
            <img
              src="../assets/FooterImages/Twitter.png"
              alt=""
              style="margin-right: 15px"
            />
            <img src="../assets/FooterImages/Instagram.png" alt="" />
          </div>

          <div class="my-3" style="color: white">Let's try out</div>

          <div class="my-3">
            <img src="../assets/FooterImages/BtnAppStore.png" alt="" />
          </div>
          <div>
            <img src="../assets/FooterImages/BtnPlayStore.png" alt="" />
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
</style>
