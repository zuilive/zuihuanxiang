<?php
//初使接口
class CommonAction extends Action{
		function _initialize() {
		// 用户权限检查
		if (C ( 'USER_AUTH_ON' ) && !in_array(MODULE_NAME,explode(',',C('NOT_AUTH_MODULE')))) {
			import ( 'ORG.Util.RBAC' );
			if (! RBAC::AccessDecision ()) {
				//检查认证识别号
				if (! $_SESSION [C ( 'USER_AUTH_KEY' )]) {
					//跳转到认证网关
					redirect ( PHP_FILE . C ( 'USER_AUTH_GATEWAY' ) );
				}
				// 没有权限 抛出错误
				if (C ( 'RBAC_ERROR_PAGE' )) {
					// 定义权限错误页面
					redirect ( C ( 'RBAC_ERROR_PAGE' ) );
				} else {
					if (C ( 'GUEST_AUTH_ON' )) {
						$this->assign ( 'jumpUrl', PHP_FILE . C ( 'USER_AUTH_GATEWAY' ) );
					}
					// 提示错误信息
					$this->error ( L ( '_VALID_ACCESS_' ) );
				}
			}
		}
		//获取网站信息
		$Site = M('Config');
		$siteinfo = $Site->where('groupid = 1')->select();
		$this->assign('siteinfo',$siteinfo);
		//获取所有节点
		$Node = M('Node')->where('status = 1')->select();
		//获取菜单信息
		$Menu = M('Menu')->where('status = 1')->order('id')->select();

		if (!$_SESSION['administrator']) {
			//获取后台权限的信息
			$Admin = $_SESSION['_ACCESS_LIST']['ADMIN'];
			$Modul = '';
			$Action = '';
			$i = 0;
			$t = 0;
			foreach ($Admin as $key => $value) {
				$Modul[$i] = $key;
				foreach ($value as $akey => $avalue) {
					$Action[$key][$t++] = $akey;
				}
				$i++;
			}
			foreach ($Menu as $key => $value) {
				$Mo = strtoupper($value['model']);
				
					if (!in_array(strtoupper($value['model']),$Model) && !in_array(strtoupper($value['action']), $Action[$Mo])) {
					unset($Menu[$key]);
					}
				
				
			}
		}
		
		//dump($Menu);
		$this->assign('adminmenu',$Menu);
		
	}
}

?>