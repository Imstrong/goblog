'use strict'
const path = require('path')
const config = require('../config')
const ExtractTextPlugin = require('extract-text-webpack-plugin')
const packageConfig = require('../package.json')

exports.assetsPath = function (_path) {
  const assetsSubDirectory = process.env.NODE_ENV === 'production'
    ? config.build.assetsSubDirectory
    : config.dev.assetsSubDirectory

  return path.posix.join(assetsSubDirectory, _path)
}

exports.cssLoaders = function (options) {
  options = options || {}

  const cssLoader = {
    loader: 'css-loader',
    options: {
      sourceMap: options.sourceMap
    }
  }

  const postcssLoader = {
    loader: 'postcss-loader',
    options: {
      sourceMap: options.sourceMap
    }
  }

  // generate loader string to be used with extract text plugin
  function generateLoaders(loader, loaderOptions) {
    const loaders = options.usePostCSS ? [cssLoader, postcssLoader] : [cssLoader]

    if (loader) {
      loaders.push({
        loader: loader + '-loader',
        options: Object.assign({}, loaderOptions, {
          sourceMap: options.sourceMap
        })
      })
    }

    // Extract CSS when that option is specified
    // (which is the case during production build)
    if (options.extract) {
      return ExtractTextPlugin.extract({
        use: loaders,
        fallback: 'vue-style-loader'
      })
    } else {
      return ['vue-style-loader'].concat(loaders)
    }
  }

  // https://vue-loader.vuejs.org/en/configurations/extract-css.html
  return {
    css: generateLoaders(),
    postcss: generateLoaders(),
    less: generateLoaders('less'),
    sass: generateLoaders('sass', {indentedSyntax: true}),
    scss: generateLoaders('sass'),
    stylus: generateLoaders('stylus'),
    styl: generateLoaders('stylus')
  }
}

// Generate loaders for standalone style files (outside of .vue)
exports.styleLoaders = function (options) {
  const output = []
  const loaders = exports.cssLoaders(options)

  for (const extension in loaders) {
    const loader = loaders[extension]
    output.push({
      test: new RegExp('\\.' + extension + '$'),
      use: loader
    })
  }

  return output
}

exports.createNotifierCallback = () => {
  const notifier = require('node-notifier')

  return (severity, errors) => {
    if (severity !== 'error') return

    const error = errors[0]
    const filename = error.file && error.file.split('!').pop()

    notifier.notify({
      title: packageConfig.name,
      message: severity + ': ' + error.name,
      subtitle: filename || '',
      icon: path.join(__dirname, 'logo.png')
    })
  }
}

//一.在utils.js文件末尾添加：
//1>引入glob
var glob = require("glob")
//2.引入html页面模板
var htmlWebpackPlugin = require("html-webpack-plugin")
//3.保存多页面入口文件所在根目录（从哪里开始分页面）
const PAGE_PATH = path.resolve(__dirname, "../src/pages")
//4.引入webpack-merge
var merge = require("webpack-merge")

//二.开始多入口配置
exports.entries = function () {
  var entryJss = glob.sync(PAGE_PATH + '/*/*.js')
  var map = {}
  entryJss.forEach((entryJs) => {

    //获得文件名（不含后缀）
    var fileName = entryJs.substring(entryJs.lastIndexOf("\/") + 1, entryJs.lastIndexOf("."))

    //一个文件名对应一个路径
    map[fileName] = entryJs
  })
  return map
}

//三.配置自动生成模板文件输出
exports.htmlPlugin = function () {
  let entryHtmls = glob.sync(PAGE_PATH + "/*/*.html")
  let arr = []
  entryHtmls.forEach((entryHtml) => {
    let fileName = entryHtml.substring(entryHtml.lastIndexOf("\/") + 1, entryHtml.lastIndexOf("."))
    let conf = {
      template: entryHtml,
      fileName: fileName + ".tpl",
      //页面模板要引入的js文件，以下面这几个词为前缀
      chunks: ['manifest', 'vendor', fileName],
      inject: true,
      // }
      // //如果是production模式，增加一些配置
      // if(process.env.NODE_ENV=='production'){
      //   conf=merge(conf,{
      minify: {
        //删除注释
        removeComments: true,
        //删除回车
        collapseWhitespace: true,
        //删除属性的引号
        removeAttributeQuotes: true
      },
      //js文件的引用顺序，有四种选择：'none','auto','dependency','{function}'
      chunksSortMode: 'dependency'
      // })
    }
    arr.push(new htmlWebpackPlugin(conf))
  })
  return arr
}
