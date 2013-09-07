<?php
/*
*	网站地图控制器
*	@create 2013-9-7
*	@author zuihuanxiang@gmail.com
*/
class SitemapAction extends CommonAction{
	public function index(){
		$this->display();
	}

	public function start(){
		$this->sitemap();
		$this->rss();
		$status = array('statusCode'=>200,'message'=>'网站地图生成成功！','navTabId'=>'','rel'=>'','callbackType'=>'','forwardUrl'=>'');
		echo json_encode($status);
	}

	//生成地图
	public function sitemap(){
		import('ORG.Net.SitemapGenerator');
		// create object
        $sitemap = new SitemapGenerator($siteinfo['1']['value']);

        //首页链接
        $siteinfo = M('Config')->select();
        $sitemap->addUrl($siteinfo['1']['value'],date('c'),'daily','1');
        
        //分类链接
        $Category = M('Category')->where('status = 1')->select();
        $url = 0;
        foreach ($Category as $key => $value) {
        	$url = $siteinfo['1']['value'].'/'.$value['url'];
        	$sitemap->addUrl($url,date('c'),'','0.5');
        }

        //文章链接
        $armap['status'] = array('eq',1);
        $armap['type'] = array('eq','article');
        $post = D('ArticleView')->where($map)->select();
        $url = 0;
        foreach ($post as $key => $value) {
        	$url = $siteinfo['1']['value'].'/'.$value['curl'].'/'.$value['url'].'.html';
        	$sitemap->addUrl($url,date('c'),'daily');
        }

        // create sitemap
        $sitemap->createSitemap();

        // write sitemap as file
        $sitemap->writeSitemap();

        // submit sitemaps to search engines
        $sitemap->submitSitemap();
	}

	//生成Rss
	public function rss(){
		import('ORG.Util.Rss');
		$siteinfo = M('Config')->select();
		$RssConf = array(
			'channelTitle' => $siteinfo['0']['value'],
			'channelLink'=> $siteinfo['1']['value'],
			'copyright'=>'zuilive'
			);

		$post = D('ArticleView')->select();
		$RSS = new Rss($RssConf);
		foreach ($post as $k => $v) {
			$RSS->AddItem($v['title'],$v['id'],$v['description'],$v['updatetime'],$v['id'],'作者','分类');
		}

		$RSS->SaveToFile('rss.xml');
	}
}

?>