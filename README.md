# faahilCHANGES

# 8/6 9.15 PM

1) Import company_finance SQL table
2) put all the uploaded files to VIEW

## add to HOME_CONTROLLER
        
     public function Finance() {

        $result['title']= $this->Home_Model->get_Finance();
        
        $this->load->view('Finance',$result);
    }

    public function Contact() {
        $this->load->view('Contact');
        //echo get_category();
    }
    
    
    
## add to HOME_MODEL
    
    function get_Finance(){
        $where = array(
            'finance_status' => 1
        );
        $products = $this->db->get_where('company_finance', $where)->result_array();
        return $products;
    }
    
    
