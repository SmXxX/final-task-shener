<template>
  <div class="slides">
    <div class="slides-inner">
      <Slide
        v-bind:slide="slide"
        class="mx-3 mt-5"
        v-for="slide in slides"
        :key="slide"
        style="display: inline-block"
      ></Slide>
    </div>
    <!-- <div class="navigate">
      <div class="toggle-page left">
        <i @click="prevSlide()" class="fas fa-chevron-left"></i>
      </div>
      <div class="toggle-page right">
        <i @click="nextSlide()" class="fas fa-chevron-right"></i>
      </div>
    </div> -->
  </div>
</template>

<script>
import Slide from "./Slide.vue";
// import { ref, onMounted } from "vue";
export default {
  //   setup() {
  //     const currentSlide = ref(1);
  //     const getSlideCount = ref(null);
  //     const autoPlayEnabled = ref(true);
  //     const timeoutDuration = ref(2000);

  //     const nextSlide = () => {
  //       if (currentSlide.value === getSlideCount.value) {
  //         currentSlide.value = 1;
  //         return;
  //       }
  //       currentSlide.value += 1;
  //     };
  //     const prevSlide = () => {
  //       if (currentSlide.value === 1) {
  //         currentSlide.value = 1;
  //         return;
  //       }
  //       currentSlide.value -= 1;
  //     };
  //     const goToSlide = (index) => {
  //       currentSlide.value = index + 1;
  //     };
  //     const autoPlay = () => {
  //       setInterval(() => {
  //         nextSlide();
  //       }, timeoutDuration.value);
  //     };
  //     if (autoPlayEnabled.value) {
  //       autoPlay();
  //     }
  //     onMounted(() => {
  //       getSlideCount.value = document.querySelectorAll(".slide").length;
  //     });

  //     return { currentSlide, nextSlide, prevSlide, getSlideCount, goToSlide };
  //   },
  data() {
    return {
      slides: [
        { src: require("../assets/HomeImages/Plan1.png") },
        { src: require("../assets/HomeImages/Plan2.png") },
        { src: require("../assets/HomeImages/Plan3.png") },
      ],
    };
  },
  props: {
    itemsPerSlide: {
      type: null,
      default: 1,
    },
  },
  components: {
    Slide,
  },
};
</script>

<style lang="scss" scoped></style>
