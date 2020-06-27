const path = require('path');
const webpack = require('webpack')
const HtmlWebpackPlugin = require('html-webpack-plugin')

///// 本文件存放开发与发布的公共配置
//// Write By LaiChao

module.exports = {
    entry: './src/main.js',
    output: {
        path: path.resolve(__dirname, '../dist'),
        filename: 'bundle.js',
        // publicPath: "dist/"
    },
    module: {
        rules: [
            {
                /// \. 转义字符，$表示结尾
                test: /\.css$/,
                /// style-loader 负责将css添加到DOM
                /// 使用多个loader时，是从右向左的，顺序不可以换
                use: ['style-loader', 'css-loader']
            },
            {
                test: /\.less$/,
                use: [{
                    loader: "style-loader" // creates style nodes from JS strings
                }, {
                    loader: "css-loader" // translates CSS into CommonJS
                }, {
                    loader: "less-loader" // compiles Less to CSS
                }]
            },
            {
                test: /\.(png|jpg|gif)$/,
                use: [
                    {
                        loader: 'url-loader',
                        options: {
                            /// 当加载的图片小于limit时，会将图片编译成base64字符串的形式
                            /// 当图片大于limit时，需要使用file-loader模块进行加载
                            limit: 2100,
                            /// 自定义打包后的文件命名规则
                            name: '[name].[hash:8].[ext]'
                        }
                    }
                ]
            },
            {
                test: /\.js$/,
                exclude: /(node_modules|bower_components)/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        //// 转ES5
                        presets: ['es2015']
                    }
                }
            },
            {
                test: /\.vue$/,
                use: ['vue-loader']
            }
        ]
    },
    resolve: {
        // 添加导入省略后缀
        extensions: ['.js', '.css', '.vue'],

        // alias: 别名
        alias: {
            'vue$': 'vue/dist/vue.esm.js'
        }
    },
    plugins: [
        new webpack.BannerPlugin('\n\n\t\t最终版权归 *** lai - chao *** 所有\n\n'),
        new HtmlWebpackPlugin({
            template: 'index.html'
        }),
        // new uglifyjs()
    ],
    // devServer: {
    //     contentBase: './dist',
    //     inline: true
    // }
}