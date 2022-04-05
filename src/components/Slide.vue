<template>
  <div class="slide-phone">
    <img :src="slide.src" alt="" />
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  props: ["slide"],
};
</script>

<style lang="scss" scoped></style>
