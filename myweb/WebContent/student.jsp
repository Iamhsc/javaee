<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册</title>
<link href="./layui/css/layui.css" rel="stylesheet">
</head>
<script src="./layui/layui.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
		//但是，如果你的HTML是动态生成的，自动渲染就会失效
		//因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
		form.render();
		layui.use('upload', function(){
			  var upload = layui.upload;
			   
			  //执行实例
			  var uploadInst = upload.render({
			    elem: '#test1' //绑定元素
			    ,url: '/upload/' //上传接口
			    ,done: function(res){
			    	layui.msg("aaa");
			      //上传完毕回调
			    }
			    ,error: function(){
			    	layui.msg("bbb");
			      //请求异常回调
			    }
			  });
			});
	});
</script>
<body>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>学生信息注册页面</legend>
	</fieldset>
	<form class="layui-form" action="./student" method="post">
		<input type="hidden" name="action" value="save">
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required placeholder="请输入学号"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required placeholder="请输入姓名"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">性别</label>
			<div class="layui-input-block">
				<input type="radio" name="sex" value="男" title="男" checked>
				<input type="radio" name="sex" value="女" title="女">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">专业</label>
			<div class="layui-input-inline">
				<select name="professional">
					<option value=""></option>
					<option value="计算机科学与技术">计算机科学与技术</option>
					<option value="网络工程技术">网络工程技术</option>
					<option value="物联网工程">物联网工程</option>
					<option value="通信工程技术">通信工程技术</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">爱好</label>
			<div class="layui-input-block">
				<input type="checkbox" name="hobby" value="动漫" title="动漫"> <input
					type="checkbox" name="hobby" value="体育" title="体育"> <input
					type="checkbox" name="hobby" value="编程" title="编程"> <input
					type="checkbox" name="hobby" value="旅游" title="旅游">
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">简介</label>
			<div class="layui-input-inline">
				<textarea name="self" placeholder="请输入内容" class="layui-textarea"></textarea>
			</div>
		</div>
10.<button type="button" class="layui-btn" id="test1">11.  <i class="layui-icon">&#xe67c;</i>上传图片12.</button>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-filter="" lay-submit>立即提交</button>
				<button class="layui-btn layui-btn-primary" type="reset">重置</button>
			</div>
		</div>
	</form>
</body>
</html>