//// 发布配置文件
//// Write By LaiChao

const uglifyjs = require('uglifyjs-webpack-plugin')
const webpackMerge = require('webpack-merge')
const baseConfig=require('./base.config')

//// Base + Prod
//// Base + uglify
module.exports = webpackMerge(baseConfig, {
    plugins: [
        new uglifyjs()
    ]
})