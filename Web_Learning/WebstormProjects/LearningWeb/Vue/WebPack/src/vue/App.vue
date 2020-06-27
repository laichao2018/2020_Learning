<template>
    <div>
        <h2 class="title">{{message}}</h2>
        <button @click="btnClick">按钮</button>
        <h2>{{name}}</h2>
        <Cpn></Cpn>
    </div>
</template>

<script>
    import Cpn from './Cpn.vue'

    export default {
        name: "App",
        components: {
            Cpn     ///注册导入的组件
        },
        data() {
            return {
                message: 'Hello Vue',
                name: 'Laichao'
            }
        },
        methods: {
            btnClick() {
                console.log(this.message);
                alert(this.message);
            }
        }
    }
</script>

<style scoped>
    .title {
        color: green;
        font-size: 60px;
    }
</style>