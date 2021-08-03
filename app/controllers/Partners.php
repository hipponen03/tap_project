<?php


class Partners extends Controller
{

    /**
     * Partners constructor.
     */
    public function __construct()
    {
        $this->pagesModel = $this->model('Partner');
    }

    public function index(){
        // echo 'index method is loaded<br>';
        $data = array(
            'title' => 'Koostööpartnerid',
            'content' => 'Partners index view is loaded by MVC'
        );
        $this->view('partners/index', $data);
    }
}