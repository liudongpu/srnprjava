
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title></title> 
	<link type="text/css" href="/zadmin/zzero/web/themes/webbase/admincss/base.css" rel="stylesheet">
	<link type="text/css" href="/zadmin/zzero/web/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="/zadmin/zzero/web/lib/jquery/jquery-last.min.js"></script>
	<script type="text/javascript" src="/zadmin/zzero/web/lib/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/zadmin/zzero/web/zen/zen.js"></script>
</head> 
<body>

<table  class="table table-bordered">
  <caption></caption>
  <thead>
  
  
  
    <tr>
       
    </tr>
  </thead>
  <tbody>
  
  <#list p_list?keys as e_list>
	<tr>
      
      	<td>${e_list}</td>
      	<td>${p_list[e_list]}</td>
     
    </tr>
	</#list>
  </tbody>
</table>


