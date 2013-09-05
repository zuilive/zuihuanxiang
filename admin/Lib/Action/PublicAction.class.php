<?php
class PublicAction extends Action{
	function index(){
		
		$this->login();
	}
	
	function login(){
		$this->display();
	}
	
	function checkLogin(){
		if(empty($_POST['username'])) {
			$this->error('帐号错误！');
		}elseif (empty($_POST['password'])){
			$this->error('密码必须！');
		}elseif (empty($_POST['verify'])){
			$this->error('验证码必须！');
		}
		
        //生成认证条件
        $map            =   array();
		// 支持使用绑定帐号登录
		$map['username']	= $_POST['username'];
		if(session('verify') != md5($_POST['verify'])) {
			$this->error('验证码错误！');
		}
		
		import ( 'ORG.Util.RBAC' );
        $authInfo = RBAC::authenticate($map);
        //使用用户名、密码和状态的方式进行认证
        if(false === $authInfo) {
            $this->error('帐号不存在或已禁用！');
        }else {
            if($authInfo['password'] != md5($_POST['password'])) {
            	$this->error('密码错误！');
            }
            $_SESSION[C('USER_AUTH_KEY')]	=	$authInfo['id'];
            $_SESSION[C('USER_NAME')] = $authInfo['username'];
            if($authInfo['username']=='admin') {
            	$_SESSION['administrator']		=	true;
            }
          
			// 缓存访问权限
            RBAC::saveAccessList();
			$this->success('登录成功！',__APP__.'/Index/index');

		}
	}
	function loginout(){
		if(isset($_SESSION[C('USER_AUTH_KEY')])) {
			//保存登录信息
			$User	=	M('User');
			$ip		=	get_client_ip();
			$time	=	time();
			$data = array();
			$data['last_login_time']	=	$time;
			$data['login_count']	=	array('exp','login_count+1');
			$data['last_login_ip']	=	$ip;
			$User->where('id='.$_SESSION[C('USER_AUTH_KEY')])->save($data);
			
			unset($_SESSION[C('USER_AUTH_KEY')]);
			unset($_SESSION);
			session_destroy();
            $this->assign("jumpUrl",__URL__.'/login/');
            $this->success('登出成功！');
        }else {
            $this->error('已经登出！');
        }
	}
	
	//验证码
	public function verify() {
		$type	 =	 isset($_GET['type'])?$_GET['type']:'gif';
		import("ORG.Util.Image");
		Image::buildImageVerify(4,1,$type);
		//dump($_SESSION);
	}

	function _empty(){
        header("HTTP/1.0 404 Not Found");//使HTTP返回404状态码
        $this->display("Public:404");
    }
	
}