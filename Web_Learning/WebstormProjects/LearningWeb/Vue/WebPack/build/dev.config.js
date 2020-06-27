//// 开发配置文件
//// Write By LaiChao

const webpackMerge = require('webpack-merge')
const baseConfig = require('./base.config')

//// Base + Dev
//// Base + devServer
module.exports = webpackMerge(baseConfig, {
    devServer: {
        contentBase: './dist',
        inline: true
    }
})