<template>
  <div class="slide">
    <transition name="slide">
      <slot />
    </transition>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss">
.slide-enter-active,
.slide-leave-active {
  transition: opacity 2s ease-in-out;
}
.slide-enter-from,
.slide-leave-to {
  opacity: 0;
}
</style>
