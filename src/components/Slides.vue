<template>
  <div class="slides">
    <div class="slides-inner">
      <div v-for="slide in slides" :key="slide">
        <Slide v-bind:slide="slide"></Slide>
      </div>
    </div>
  </div>
</template>

<script>
import Slide from "./Slide";
export default {
  data() {
    return {
      slides: [
        { src: "assets/HomeImages/Plan1.png" },
        { src: "assets/HomeImages/Plan2.png" },
        { src: "assets/HomeImages/Plan3.png" },
      ],
    };
  },
  components: {
    Slide,
  },
};
</script>

<style></style>
