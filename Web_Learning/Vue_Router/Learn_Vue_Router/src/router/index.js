import Vue from 'vue'
/// 配置路由相关信息
import VueRouter from 'vue-router'
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
Vue.use(VueRouter)


//// routes配置路由和组件之间的应用关系
//// 创建router对象
const routes = [{
    //// 默认值
    path: '',
    // component: home,
    ////路径重定向
    redirect: '/home'
  },
  {
    path: '/home',
    component: home,
    meta: {
      title: '首页'
    },
    children: [{
        path: '',
        redirect: 'news'
      },
      {
        path: 'news',
        component: home_news,
      },
      {
        path: 'message',
        component: home_message,
      }
    ]
  },
  {
    path: '/about',
    component: about,
    meta: {
      title: '关于'
    },
    beforeEach: (to, from, next) => {
      console.log('about beforeEach');
      next();
    }
  },
  {
    path: '/User/:userID',
    component: user,
    meta: {
      title: '用户'
    },
  },
  {
    path: '/profile',
    component: Profile,
    meta: {
      title: '我的界面'
    },
  }
]

const router = new VueRouter({
  // 配置路由和组件之间的应用关系
  routes,
  mode: 'history',
  linkActiveClass: 'active'
})

// 前置守卫(guard)
router.beforeEach((to, from, next) => {
  // 从from跳转到to
  document.title = to.matched[0].meta.title
  // console.log(to);
  // console.log('++++');
  next()
})

// // 后置钩子(hook)
// router.afterEach((to, from) => {
//   console.log('====');
// })

export default router;
