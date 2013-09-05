<?php
class PeriodicalAction extends CommonAction{
	public function add(){
		$this->display();
	}

	public function getinfo(){
		$w = I('get.w');
		$h = I('get.h');
		$x = I('get.x');
		$y = I('get.y');

		$this->ajaxReturn($x,'OK!',1,test);
	}
}
?>