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
    component: PageLogin,
  },
  {
    path: "/page-register",
    name: "PageRegister",
    component: PageRegister,
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
