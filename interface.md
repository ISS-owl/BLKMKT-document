

captcha module:

| url             | method | Request params key | Response                             | description                           |
| --------------- | ------ | ------------------ | ------------------------------------ | ------------------------------------- |
| /kaptcha/render | get    |                    | Content-Type:image/jpeg              | 返回验证码图片                        |
| /kaptcha/valid  | post   | code               | Cookies get JSESSIONID or status=202 | 成功则得到jsession，失败返回状态码202 |
|                 |        |                    |                                      |                                       |

