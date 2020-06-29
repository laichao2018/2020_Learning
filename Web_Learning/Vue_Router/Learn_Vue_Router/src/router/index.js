import Vue from 'vue'
/// 配置路由相关信息
import Router from 'vue-router'
// import HelloWorld from '@/components/HelloWorld'
// import home from '../components/Home'
// import about from '../components/About'
// import user from '../components/User'

//// 路由懒加载
const home = () => import('../components/Home');
const about = () => import('../components/About');
const user = () => import('../components/User');
const home_news = () => import('../components/HomeNews');
const home_message = () => import('../components/HomeMessage');
const Profile = () => import('../components/Profile');


/// 通过vue.use（插件），安装插件
Vue.use(Router)

export default new Router({
  //// routes配置路由和组件之间的应用关系
  //// 创建router对象
  routes: [
    {
      //// 默认值
      path: '',
      name: "主页",
      component: home,
      ////路径重定向
      redirect: '/home'
    },
    {
      path: '/home',
      name: '主页',
      component: home,
      children: [
        {
          path: '',
          redirect: '/news'
        },
        {
          path: 'news',
          component: home_news
        },
        {
          path: 'message',
          component: home_message
        }
      ]
    },
    {
      path: '/about',
      name: '关于',
      component: about
    },
    {
      path: '/User/:userID',
      name: '用户',
      component: user
    },
    {
      path: '/profile',
      component: Profile
    }
  ],
  mode: 'history',
  linkActiveClass: 'active'
})