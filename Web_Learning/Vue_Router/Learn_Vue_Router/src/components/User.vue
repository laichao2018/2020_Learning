<template>
  <div>
    <h2>我是用户界面</h2>
    <p>我是用户界面的内容</p>
    <h2>{{userID}}</h2>
    <button @click="btnClick">点击按钮</button>
  </div>
</template>

<script>
export default {
  name: "User",
  computed: {
    userID() {
      return this.$route.params.userID;
    }
  },
  methods: {
    btnClick() {
      console.log(this.$router);
    }
  }
};
</script>

<style>
</style>