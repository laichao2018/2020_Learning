<template>
  <div>
    <h2>我是我的界面组件</h2>
    <p>我是我的界面的内容，哈哈哈哈</p>
    <h1>{{$route.query}}</h1>
    <h1>{{$route.query.name}}</h1>
  </div>
</template>

<script>
export default {
  name: "profile",
  created(){
    document.title='我的界面';
  }
};
</script>

<style scoped>
</style>
