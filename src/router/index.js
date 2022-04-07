import { createRouter, createWebHistory } from "vue-router";

import Home from "../views/Home.vue";
import PageBlog from "../views/PageBlog.vue";
import PageContact from "../views/PageContact.vue";
import PageLogin from "../views/PageLogin.vue";
import PageRegister from "../views/PageRegister.vue";
import PageSingle from "../views/PageSingle.vue";

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/page-blog",
    name: "PageBlog",
    component: PageBlog,
  },
  {
    path: "/page-single/:id",
    name: "PageSingle",
    component: PageSingle,
    props: true,
  },
  {
    path: "/page-contact",
    name: "PageContact",
    component: PageContact,
  },

  {
    path: "/page-login",
    name: "PageLogin",
    component: () => import("../views/PageLogin.vue"),
    meta: {
      loggedIn: false,
    },
  },
  {
    path: "/page-register",
    name: "PageRegister",
    component: () => import("../views/PageRegister.vue"),
    meta: {
      loggedIn: false,
    },
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});
router.beforeEach((to, from, next) => {
  if (to.meta.loggedIn) {
    if (!localStorage.getItem("token")) {
      next("/");
    } else {
      next();
    }
  } else {
    next();
  }
});

export default router;
