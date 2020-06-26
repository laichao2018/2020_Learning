const path = require('path');

module.exports = {
    entry: './src/main.js',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                /// \. 转义字符
                test: /\.css$/,
                /// style-loader 负责将css添加到DOM
                /// 使用多个loader时，是从右向左的，顺序不可以换
                use: ['style-loader', 'css-loader']
            }
        ]
    }
}