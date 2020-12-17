<template>
    <div id="app">
        <ul>
            <li v-for="user in users" :key="user.id">
                {{ user.id }}---{{ user.name }}
            </li>
        </ul>
    </div>
</template>

<script>
import axios from "axios";
export default {
    name: "App",
    data() {
        return {
            users: [],
        };
    },
    mounted() {
        axios.get("http://115.29.242.103:8083/api/users").then((res) => {
            this.users = res.data;
        });
    },
};
</script>

<style>
#app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
}
li {
    list-style-type: none;
}
</style>
