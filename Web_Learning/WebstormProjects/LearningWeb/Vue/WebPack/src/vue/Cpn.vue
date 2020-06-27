<template>
    <div>
        <h2 class="he">我是cpn组件的标题</h2>
        <p class="he">我是cpn组件的内容，哈哈哈哈哈</p>
        <h2 class="he">{{name}}</h2>
    </div>
</template>

<script>
    export default {
        name: "Cpn",
        data() {
            return {
                name: "CPN组件的name"
            }
        }
    }
</script>

<style scoped>
    .he {
        margin: 30px;
        padding: 20px;
        color: cadetblue;
        font-size: 70px;
    }
</style>