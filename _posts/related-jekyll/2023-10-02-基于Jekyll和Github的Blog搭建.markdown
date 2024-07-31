---
layout: post
title: "Ruby+Jekyll+Github 搭建 Blog"
categories: [Jekyll 系列]
tags: Ruby Jekyll blog
---

## 静态博客【优势】：

### 1.【速度和性能】

- 由于静态博客是预先生成的静态 HTML 文件，它们不需要像传统的动态博客那样在服务器上进行实时的数据库查询。这意味着当用户请求一个页面时，服务器可以立即提供该页面，从而大大提高了加载速度和整体性能。

### 2.【安全性】

- 静态博客由于没有数据库和后端服务器代码，因此它们不容易受到常见的网络攻击，如 SQL 注入和跨站脚本攻击。这使得静态博客在安全性方面具有明显的优势。

### 3.【易于部署和维护】

- 静态博客通常只需要一个简单的文件托管服务，如 GitHub Pages 或 Netlify，就可以轻松部署。没有数据库意味着没有复杂的服务器配置和维护工作。此外，许多静态站点生成器，如 Jekyll 和 Hugo，提供了简单的命令行工具，使得创建、更新和部署内容变得非常简单。

## 一。安装【Jekyll】依赖：

### 1.【"Jekyll"流程查看】

- 本地"Jekyll"流程查看-[Jekyll on Windows](https://jekyllrb.com/docs/installation/windows/)

### 2. 【“Ruby”安装流程】

- 下载和安装[**Ruby+Devkit**](https://rubyinstaller.org/downloads/);(**Ruby 的安装路径中不能有空格，所以不建议安装在`Program Files`中，笔者是直接安装在 C 盘根目录下`Ruby32-x64`默认安装就好了**)
  
![image-20230910172328400](/image/image-2024-07-31-01.png)
![image-20230910172224235](/image/image-202310010001.png)
安装完后，进入终端查看"ruby"现在的版本号
![image-20230910172224235](/image/image-202310010002.png)

### 3.【"Ridk"环境安装】

- **之后如果需要手动输入命令行请在 Ruby 的安装目录中进行，即在`Ruby32-x64`目录中，通过在路径处输入`cmd`来启动命令行.**
  
![image-20230910172224235](/image/image-20230910172224235.png)
![image-20230910172328400](/image/image-20230910172328400.png)

- 以**管理员权限**运行安装完之后，会自动执行命令行 (如果此时错过了，可以之后在命令行中手动执行)`ridk install`, 此时默认选择安装`[1,3]`项，回车即可等到出现`Which components shall be installed? If unsure press ENTER []`就退出;
  ![image-20220819100333102](/image/image-20220819100333102.png)

### 4.【“Jekyll”“Bundle”环境安装】

- 然后命令行执行`gem install jekyll bundler`, 安装 jekyll;(此时如果有梯子，可能会产生反效果，可以关闭后尝试)

- 最后执行`jekyll -v`，看是否成功安装，成功的话，会在命令行中显示 jekyll 的版本号。
  ![image-20230910172527270](/image/image-20230910172527270.png)

- 此时 Jekyll 布置完毕。

## 二。选择 Theme 主题并搭建：

### 1.【主题选择[Jekyll Themes](http://jekyllthemes.org/) 】

> 如果不去选择一个已经开发很完善的主题，你就需要在"Jekyll"最基础的模板中，也就是以下这样的模板下再去下载查看或者扩展别的模块来增加网页的功能，我想你也会跟我一样还是把大多时间放到生活中或者工作上，不愿意在一个博客中投入那么多的时间！接下来我们开始吧！
> ![image-20230910172224235](/image/image-202310010003.png)

> 现在前往前往[Jekyll Themes](http://jekyllthemes.org/), 选中了`Chirpy`这个 theme, 点击进入到 Theme 中。![image-20230910163455739](/image/image-202310010004.png)

### 2.【创建博客页面仓库】

选用主题后点击 Demo->Getting Started
![image-20230910165935141](/image/image-20230910165935141.png)
![image-20230910170046368](/image/image-20230910170046368.png)

基于作者的[Github 工程](https://github.com/cotes2020/chirpy-starter)创建自己的 Blog 工程

![image-20230910170317592](/image/image-20230910170317592.png)
创建出的工程名称为`USERNAME.github.io`, 其中`USERNAME` 需要修改为你自己的 Github 名称。仓库的名字“USERNAME”一定要小写，不然上传或者部署会失败！

创建好仓库后，- 进入你的 Github 工程，依次点击`Settings`->`Pages`
![image-20230910165935141](/image/image-202310010005.png)

以上你的主题选取跟建立好了你的网页端，接下来我们要进入本地拉取 github 上的仓库跟做一些配置，还有上传你需要的文章！

## 三。本地拉取工程跟上传文件：

### 1.【本地部署】

- 通过 Git 拉取创建的工程

- 一定要在工程根目录下执行命令行`bundle`不要在Ruby的路径下, 此时会下载依赖库 (梯子可能有反作用)(**这个步骤中的命令行都在工程的根目录下执行**)

- 打开根目录下的`_config.yml`进行配置，笔者修改的项目如下

    - `lang: zh-CN`

    - `timezone: Asia/Shanghai`, 时区的话，哪个地方都行。

    - `title: Jauved`, 这里需要换成你自己的名字。

    - `tagline: 一个学徒`, 这里自行发挥。

    - ```console

    description: >- # used by seo meta and the atom feed
      记录技术点的博客

    ```
    - `url: 'https://jauved.github.io/'`, 这里需要将`jauved`替换为你的名字。
    - 后面的 Github, twitter, 等等相关信息都替换为你自己的。
    - `avatar: 'avatar.jpg'`, 头像路径，笔者直接丢在了根目录，可以按照需要放在其他地方，最好是方形图片。

- 运行命令行`bundle exec jekyll s`可以开启本地测试端，开启后，访问地址为`https://127.0.0.1:4000/`

### 2.【前置需求】

- 上传的文件名格式需要是"YYYY-MM-DD-title"

- 然后需要在 md 文档中最上方加入`Front Matter`, 代码行如下

  ```yaml
  ---
  layout: layout: post # 这一行可以不用写，默认就是该值
  title: TITLE # 标题，中文的话需要用""包裹
  date: YYYY-MM-DD HH:MM:SS +/-TTTT # 这一行可以不用写
  categories: [TOP_CATEGORIE, SUB_CATEGORIE] # e.g. [Unity, PBR]
  tags: [TAG]     # 这里有点坑看例子就懂了，用空格分割，且不需要[]包裹，e.g. ComputeShader 视锥体剔除
  ---
  ```

### 3.【上传博文】

- 将要上传的文件放置在`_posts`文件夹下。

- 在提交之前建议先从本地进行预览。

- 任何的**提交**动作，都会自动触发`Github Actions`.

- 提交完毕之后，通过`Action`页签，检查是否有错误，如果有错误，看下报错码来解决。

  ![image-20230910175601758](/image/image-20230910175601758.png)

- 访问`https://jauved.github.io/`, 其中`jauved`替换为你自己的名字，就可以访问到你布置的 Blog 了。

## 四。域名更换：

### 1.【域名解析】

你首先先需要有个域名，可以是一级域名或者二级域名，然后在你的域名下解析好你的仓库

![image-20220819100333102](/image/image-202310010006.png)

### 2.【域名设置】

配置你的仓库域名，依次点击`Settings`->`Pages`到“Custom domain”这个模块下

填写好域名后会出现这样的状态：表示仓库正在解析
![image-20220819100333102](/image/image-202310010007.png)
成功后域名的状态会变绿
![image-20220819100333102](/image/image-202310010008.png)

## 五。遇到的坑：

### 1.【github-仓库域名问题】

Github 上会免费给 git 用户分配一个域名 USERNAME.github.io，当你第一次新后删除了仓库 USERNAME.github.io，你的域名还是会存在，只是你的 URL 不再使用，可当你新建了另一个仓库后会在原来的 USERNAME.github.io/YouNew-USERNAME.github.io 这样的域名形式，前缀域名无法删除。

### 2.【github\workflows-Http 问题】

使用 Chirpy 主题工程需要的.github\workflows 下 pages-deploy.yml 下 actions/checkout@v3 跟 actions/checkout@v4 不一样的调整，如果升级成了 actions/checkout@v4 默认对网页 http 处理会出现上传错误无法构建问题。

```
  Run bundle exec htmlproofer _site \
  bundle exec htmlproofer _site \
    \-\-disable-external=true \
    \-\-ignore-urls "/^http:\/\/127.0.0.1/,/^http:\/\/0.0.0.0/,/^http:\/\/localhost/"
  shell: /usr/bin/bash -e {0}
  env:
    GITHUB_PAGES: true
Running 3 checks (Scripts, Links, Images) in ["_site"] on *.html files...


Checking 65 internal links
Checking internal link hashes in 1 file
Ran on 16 files!

For the Links check, the following failures were found:

* At _site/posts/基于Jekyll和Github的Blog搭建/index.html:1:

  http://jekyllthemes.org/ is not an HTTPS link

* At _site/posts/基于Jekyll和Github的Blog搭建/index.html:1:

  http://jekyllthemes.org/ is not an HTTPS link

* At _site/posts/基于Jekyll和Github的Blog搭建/index.html:19:

  http://jekyllthemes.org/ is not an HTTPS link


HTML-Proofer found 3 failures!

Error: Process completed with exit code 1.
```

解决方式：在原来的^http:\/\/localhost/后面添加，/^http:\/\//以下是 V4 更新后处理方式，永久性忽略 http 网站问题！

```
- name: Test site
        run: |
          bundle exec htmlproofer _site \
            \-\-disable-external=true \
            \-\-ignore-urls "/^http:\/\/127.0.0.1/,/^http:\/\/0.0.0.0/,/^http:\/\/localhost/,/^http:\/\//"

```

### 3.【ico 显示 问题】

![Ico 显示](/image/image-202310070001.png)

- 如果出现 ico 更新完资源后一直显示不正确的问题可以尝试 Shift+F5 强制刷新网页，这样可以解决显示问题！

## 六。参考资源：

### >【jekyll 贴文】

- [Jekyll 博客搭建流程](https://jauved.github.io/posts/%E5%9F%BA%E4%BA%8EJekyll%E5%92%8CGithub%E7%9A%84Blog%E6%90%AD%E5%BB%BA/)—博客主“Jauved”——“Jekyll”参考流程

- [Jekyll 博客样式选定](https://chirpy.cotes.page/posts/getting-started/)—博客 - 文章 01“样式选定”搭建参考
- [Jekyll 博客图标制作](https://chirpy.cotes.page/posts/customize-the-favicon/)—博客 - 文章 02“图像转图标教程”

### >【jekyll 教程】

- [Jekyll 博客系列](https://www.youtube.com/watch?v=Zt_QzSbyDcw&list=PLK2w-tGRdrj7vzX7Y-GqKPb2QPrHCYZY1&index=1)—“Jekyll”基础教程

### >【jekyll 样式】

- [Jekyll Themes](http://jekyllthemes.org/)—博客样式选择
- [Jekyll Wowthemes](https://wowthemes.net/jekyll-themes-templates/)—博客样式选择

### >【jekyll 插件】

- [jekyll 插件扩展](https://jekyllcn.com/docs/plugins/)—“jekyllcn”插件扩展下载

### >【jekyll 图标】

- [jekyll 图像在线转图标](https://realfavicongenerator.net/)—网页跟匹配手机上图标生成

## 七。扩展补充：

- ### 连接 VSCODE“Bat”文件

        # 直接运行的脚本，则连接 VSCODE 软件
        code .

- ### 本地进入"Jekyll" 服务器

        # 直接运行的脚本，则连接“jekyll”服务器
        bundle exec jekyll s
        # 如果安装的版本高的话需要操作删除
        gem uninstall jekyll
        gem install jekyll -v 4.3.2
        # 这样去安装指定版本
- ### 遇到 Bundel安装出现问题的时候

        # C:\Users\Administrator路径下找到.gitconfig
        然后加入：
              [http "https://github.com"]
              proxy = socks5://代理+端口号
              [https "https://github.com"]
              proxy = socks5://代理+端口号
              [http "https://github.com"]
              proxy = <http://代理+端口号>
              [https "https://github.com"]
              proxy = <https://代理+端口号>
