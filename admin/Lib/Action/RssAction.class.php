<?php
class RssAction extends Action{
	public function index(){
		$Article = M('Article');
		$art = $Article->where('status=1')->select();

		import('ORG.Util.Rss');
		$RssConf = array(
			'channelTitle'=>'Zuilive',
			'channelLink'=>'http://localhost/zuilivecms',
			'copyright'=>'zuilive'
			);

		$RSS = new Rss($RssConf);
		foreach ($art as $k => $v) {
			$RSS->AddItem($v['title'],$v['id'],$v['description'],$v['updatetime'],$v['id'],'作者zuilive','分类');
		}

		$RSS->SaveToFile('rss.xml');
	}
}
?>