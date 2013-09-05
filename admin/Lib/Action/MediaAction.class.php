<?php
/*
*
*	媒体库控制器
*	@author www.zuilive.org
*	@create 2013-08-05
*/
class MediaAction extends CommonAction{
	
	//图片显示列表
	public function index(){
		$path = C('FILE_UPLOAD');
		$files = array();
		$this->get_allfiles($path,$files);
		
	    $this->assign('files',$files)->display();
	}

	function get_allfiles($path,&$files) {  
    	if(is_dir($path)){  
        	$dp = dir($path);  
      	 	while ($file = $dp ->read()){  
            	if($file !="." && $file !=".." && $file != "index.html" && $file != "default.png"){  
               		$this->get_allfiles($path."/".$file, $files);  
            	}  
        	}  
	        $dp ->close();  
	    }  
	    if(is_file($path)){  
	        $files[] =  $path;  
	    }  
	}  
}


?>