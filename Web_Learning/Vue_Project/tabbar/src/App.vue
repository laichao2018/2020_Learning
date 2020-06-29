<template>
  <div id="app">
    <tabbar>
      <tabbar-item>
        <img slot='item-icon' src='./assets/Img/tabbar/home.svg' />
        <img slot='item-icon-active' src="./assets/Img/tabbar/home_active.svg" />
        <div slot='item-text'>首页</div>
      </tabbar-item>
      <tabbar-item>
        <img slot='item-icon' src="./assets/Img/tabbar/category.svg" />
        <img slot='item-icon-active' src="./assets/Img/tabbar/category_active.svg" />
        <div slot='item-text'>分类</div>
      </tabbar-item>
      <tabbar-item>
        <img slot='item-icon' src="./assets/Img/tabbar/shopcart.svg" />
        <img slot='item-icon-active' src="./assets/Img/tabbar/shopcart_active.svg" />
        <div slot='item-text'>购物车</div>
      </tabbar-item>
      <tabbar-item>
        <img slot='item-icon' src="./assets/Img/tabbar/profile.svg" />
        <img slot='item-icon-active' src="./assets/Img/tabbar/profile_active.svg" />
        <div slot='item-text'>我的</div>
      </tabbar-item>
    </tabbar>
  </div>
</template>

<script>
  import Tabbar from "./components/tabbar/Tabbar";
  import TabbarItem from './components/tabbar/TabbarItem'
  export default {
    name: 'App',
    components: {
      Tabbar,
      TabbarItem
    }
  }
</script>

<style>
  @import url("./assets/css/base.css");
</style>
