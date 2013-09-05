<?php
/*
*	Ping搜索引擎模块
*/
class PingAction extends Action{
	public function index(){
    $config = S('Config');
    $blogUrl = getBlogUrl($list);
    $this->Ping(array('updateUrl'=>$blogUrl,'siteName' =>$config['blogName']));
    
	}

        /**
        +----------------------------------------------------------
        * 功能：Ping函数
        +----------------------------------------------------------
        * @param array 
        +----------------------------------------------------------
        * @return empty
        +----------------------------------------------------------
        */
        function Ping($config=array()) {
            import('ORG.Util.Ping');
            $Conf = array(//'siteName' => '小雨博客',
                    'siteUrl' => 'http://'.$_SERVER["HTTP_HOST"].'/',//站点域名
                    //'updateUrl' => '',//ping给百度等的地址，外部必须提供
                    'updateRss' => 'http://'.$_SERVER["HTTP_HOST"].'/rss',//rss地址
                    );
            $RssConf = array_merge($Conf ,$config);//将外部参数和定义参数合并
            $PING = new Ping($RssConf);
            $PING->execute();
            unset($config,$Conf,$RssConf);
        }
    

}

?>