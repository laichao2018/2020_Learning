<template>
  <div id="tab-bar">
    <slot></slot>
  </div>
</template>

<script>
  export default {
    name: "Tabbar"
  }
</script>

<style>
  #tab-bar {
    display: flex;
    background-color: #f6f6f6;

    position: fixed;
    left: 0;
    right: 0;
    bottom: 0;

    /* x, y, 厚度,颜色模式 */
    /* 颜色模式:红绿蓝透明度 */
    box-shadow: 0px -10px 10px rgba(9, 18, 100, 0.8);
  }
</style>
