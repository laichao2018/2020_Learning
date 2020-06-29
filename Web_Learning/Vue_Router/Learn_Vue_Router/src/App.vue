<template>
  <div id="app">
    <!-- <router-link to="/Home" tag="button" replace active-class="active">首页</router-link>
    <router-link to="/About" tag="button" replace active-class="active">关于</router-link>-->

    <!-- active类名在router的index.js中作了统一修改 -->
    <router-link to="/Home">首页</router-link>
    <router-link to="/About">关于</router-link>
    <router-link :to="'/User/'+userID">用户</router-link>
    <router-link v-bind:to="{path:'/profile',query:{name:'why',age:19,height:1.88}}">我的</router-link>

    <!-- <button @click="homeClick">首页</button> -->
    <!-- <button @click="aboutClick">关于</button> -->

    <button @click="userClick">前往用户</button>
    <button @click="homeClick2">前往主页</button>
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      userID: "LiSi"
    };
  },
  methods: {
    homeClick() {
      console.log("Home Page Message...");

      /// 通过代码的方式修改路径
      this.$router.push("/home");
      // this.$router.replace("/home"); //// 另外一种方式
    },
    aboutClick() {
      console.log("About Page Message...");

      /// 通过代码的方式修改路径
      this.$router.push("/about");
      // this.$$router.replace("/about");  //// 另外一种方式
    },
    userClick() {
      this.$router.push("/user/" + this.userID);
    },
    homeClick2() {
      this.$router.push({
        path: "/profile/",
        query: {
          name: "Laichao",
          age: 24,
          height: 1.98
        }
      })
    }
  }
};
</script>

<style>
/* .router-link-active {
  color: red;
  width: 60px;
  height: 45px;
} */
.active {
  color: red;
  background-color: green;
  width: 60px;
  height: 45px;
}
</style>
