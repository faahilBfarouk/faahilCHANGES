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
    
# 9/6 11.30 AM
## add to HOME_CONTROLLER
        
        public function demo() {
        $category = $this->uri->segment('3');
        $config = array();
        $config["base_url"] = base_url() . "home/demo/" . $category;
        $config["total_rows"] = $this->Home_Model->record_count($category);
        $config["per_page"] = 2;
        $config["uri_segment"] = 4;

        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>1';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '«';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '»';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
 
          


        
        
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
        $data["results"] = $this->Home_Model->
                fetch_categories($config["per_page"], $page, $category);
        $data["links"] = $this->pagination->create_links();
        $this->load->view('Demo', $data);
    }
