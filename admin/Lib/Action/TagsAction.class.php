<?php
/*
 * 标签控制器
 * @create	2013-07-15
 * @author	zuihuanxiang@gmail.com
 * @last edit	2013-07-15
 */
class TagsAction extends CommonAction{
	protected $Tags;
	
	function _initialize(){
		parent::_initialize();
		$this->Tags = D('Tags');
	}

	//标签列表显示动作
	public function index(){
		import('ORG.Util.Page');	//导入分页类
		$count = $this->Tags->count();	//查询满足条件的数量
		$Page = new Page($count,15);	//实例化分页类 设置没有条数
		$Page->setConfig('theme','<span style="float:left;line-height:34px;margin-right:10px;">%totalRow% %header% %nowPage%/%totalPage%页</span> <ul> %upPage% %first% %prePage% %linkPage% %nextPage% %end% %downPage%</ul>');
		$show = $Page->show();	//分页显示
		$list = $this->Tags->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list)->assign('page',$show)->display();

	}

	//添加标签动作
	public function add(){
		if (IS_POST) {
			if ($this->Tags->create()) {
				if ($this->Tags->add()) {
					$status = array('statusCode'=>200,'message'=>'添加成功！','navTabId'=>'','rel'=>'Tags_add','callbackType'=>'closeCurrent','forwardUrl'=>'');
					echo json_encode($status);
				}else{
					$status = array('statusCode'=>300,'message'=>'添加失败！','navTabId'=>'','rel'=>'','callbackType'=>'','forwardUrl'=>'');
					echo json_encode($status);
				}
			}else{
				$status = array('statusCode'=>300,'message'=>$this->Tags->getError(),'navTabId'=>'','rel'=>'','callbackType'=>'','forwardUrl'=>'');
				echo json_encode($status);
			}
		}else{
			$this->display();
		}
	}

	//编辑标签动作
	public function edit(){
		$id = I('id',0);
		if ($id < 1) {
			$this->error('非法操作！');
		}
		if (IS_POST) {
			if ($this->Tags->create()) {
				if (false !== $this->Tags->where('id='.$id)->save()) {
					$status = array('statusCode'=>200,'message'=>'编辑成功！','navTabId'=>'','rel'=>'Tags_edit','callbackType'=>'closeCurrent','forwardUrl'=>'');
					echo json_encode($status);
				}else{
					$status = array('statusCode'=>300,'message'=>'编辑失败！','navTabId'=>'','rel'=>'','callbackType'=>'','forwardUrl'=>'');
					echo json_encode($status);
				}
			}else{
				$status = array('statusCode'=>300,'message'=>$this->Tags->getError(),'navTabId'=>'','rel'=>'','callbackType'=>'','forwardUrl'=>'');
				echo json_encode($status);
			}
		}else{
			$info = $this->Tags->where('id='.$id)->find();
			$this->assign('info',$info)->display();
		}
	}

	//删除标签动作
	public function del(){
		
		$Tags_relation = M('TagsRelationships');
		$id = I('post.id',0);
		if (is_array($id)) {

			foreach ($id as $key => $value){
				$this->Tags->where('id='.$value)->delete();
				$Tags_relation->where('tagid='.$value)->delete();
			}
		}else{
			$id = I('get.id',0);
			$this->Tags->where('id='.$id)->delete();
			$Tags_relation->where('tagid='.$id)->delete();
		}
		$status = array('statusCode'=>200,'message'=>'删除成功','navTabId'=>'','rel'=>'','callbackType'=>'','forwardUrl'=>'');
		echo json_encode($status);
	}

	function _empty(){
        header("HTTP/1.0 404 Not Found");//使HTTP返回404状态码
        $this->display("Public:404");
    }

}
?>