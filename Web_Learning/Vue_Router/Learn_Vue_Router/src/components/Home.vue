<template>
  <div>
    <h2>我是首页</h2>
    <p>我是首页内容</p>

    <router-link to="/home/news">新闻</router-link>
    <router-link to="/home/message">消息</router-link>
    <router-view></router-view>

    <h2>{{message}}</h2>
  </div>
</template>

<script>
  export default {
    name: "home",
    data() {
      return {
        message: 'Hello Vue Home'
      }
    },
    created() {
      console.log('create');
      document.title = '首页';
    },
    destroyed() {
      console.log('destroyed');
    },
    activated() {   /// 与deactivated一起只有在使用了keep-alive时才有效
      this.$router.push(this.path);
    },
    beforeRouteLeave(to, from, next) {
      console.log(this.$route.path);
      this.path = this.$route.path;
      next();
    }
    // mounted() {
    //   console.log('mounted');
    // },
    // updated() {
    //   console.log('updated');
    // }
  };
</script>

<style scoped>
</style>
