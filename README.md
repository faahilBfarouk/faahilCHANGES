# faahilCHANGES

#8/6 9.15 PM
##add to HOME_CONTROLLER
public function Finance() {
        $result['title']= $this->Home_Model->get_Finance();
        
        $this->load->view('Finance',$result);
    }

    public function Contact() {
        $this->load->view('Contact');
        //echo get_category();
    }
    
    
    
    ##
