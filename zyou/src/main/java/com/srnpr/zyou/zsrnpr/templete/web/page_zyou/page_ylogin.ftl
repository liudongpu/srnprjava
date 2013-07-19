

<style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }



#page_main_menu,.navbar
{
	display:none;
}



    </style>

${pageexec.inSession("zyou_login_user_name",null)}
	<div class="container">

      <form class="form-signin" method="post" action="${base_url}zyou/func-login-login-func_do=login">
        <h2 class="form-signin-heading">银杏林管理后台</h2>
        <input type="text" id="user_name" name="user_name" class="input-block-level" placeholder="用户名">
        <input type="password"  id="user_pass" name="user_pass" class="input-block-level" placeholder="密码">
        <label class="checkbox">
          <input type="checkbox" value="remember-me" checked="checked"> 默认都为s
        </label>
        <button class="btn btn-large btn-primary" type="button" onclick="zen.page.submit(this)" >登录</button>
      </form>
		
    </div> <!-- /container -->
<input type="hidden" id="login_success_href" value="zyou-y/login-haslogin"/>



