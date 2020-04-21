# subconverter-heroku #

## 目的 ##
使用免费 Heroku 容器服务，部署自己的订阅转换地址，以尽量避免第三方 API 的泄露

本项目修改了更新地址为可自定义的 Heroku 地址
## 步骤 ##
1. 点击部署，如果没有显示出自定义环境参数 Config Vars, 则等几分钟再尝试

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https%3A%2F%2Fgithub.com%2Fsprindjack%2Fsubconverter-heroku)

2. 自定义自己的地址，如 `zhongguozuqiunb` ，并修改下面的地址为 `zhongguozuqiunb.herokuapp.com`

3. 完成后，若 `zhongguozuqiunb.herokuapp.com` 提示 `subconverter v0.5.1 backend` 则为部署成功

4. 订阅转换用法参见源项目库说明

## 已知问题 ##
1. Surfboard 不使用全局无法检测更新（提示超时咯，那我能咋办嘛）

## 进阶玩法 ##
你可以自己 Fork 本项目，自定义 `configure.sh` 里面的参数，以实现更符合自己需求的转换。参见源项目库的说明

subconverter 源项目库在这里:

[tindy2013/subconverter](https://github.com/tindy2013/subconverter)
