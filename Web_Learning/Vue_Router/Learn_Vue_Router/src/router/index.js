import Vue from 'vue'
/// 配置路由相关信息
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'

/// 通过vue.use（插件），安装插件
Vue.use(Router)

export default new Router({
  //// routes配置路由和组件之间的应用关系
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    }
  ]
})