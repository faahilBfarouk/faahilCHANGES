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
1) import Branches.sql as table in DB
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
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = 'PREV';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = 'NEXT';
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

        public function Contact() {
        $head['head'] = $this->Home_Model->get_Head_Contact();
        $branches['branches'] = $this->Home_Model->get_Contact();
        $this->load->view('Contact',$head,$branches);
        //echo get_category();
        }   
## add to HELPER_FUNCTIONS
        function get_Contact(){
            $ci = get_instance();
            $where = array(
                'Br_Status' => 2
            );
            $branches = $ci->db->get_where('Branches',$where)->result_array();
            return $branches;
        }
        
 ## add to HOME_MODEL
        function get_Head_Contact(){
        $where = array(
            'Br_Status' => 1
        );
        $headOffice = $this->db->get_where('Branches',$where)->result_array();
        return $headOffice;
        }

        function get_Contact(){
        $where = array(
            'Br_Status' => 2
        );
        $branches = $this->db->get_where('Branches',$where)->result_array();
        return $branches;
        }
    
# 10/6 11.30
1) use this link to get all Extra images. Put all content of this drive to /dark/img/
https://drive.google.com/drive/folders/1W56spIDDhxlaMQPxelTSJsrUx46ddVCW?usp=sharing
2) add the tables

## add to HOME_CTRL
        public function Insurance() {
        $result['title'] = $this->Home_Model->get_Insurance_Info();
   
        $this->load->view('Insurance', $result);
        }
## add to HOME_MODEL
        function get_Insurance_Info(){
            $ins1 = $this->db->get('insurance_claim_process')->result_array();
            $ins2 = $this->db->get('insurance_y_choose_us')->result_array();

            return array($ins1,$ins2);
        }
## add to helper
        function get_Best_Insurance_Agent(){
            $ci = get_instance();
            $ci->db->join('performance','performance.perf_eid = emp.Emp_Eid');
            $where = array(
                'performance.perf_in_service_ID' => 3,
                'performance.perf_rank' => 1,
            );
            $ci->db->where($where);
            return $ci->db->get('emp')->result_array();
        }

# 11/6 4.25

1) add Sendemail.php to controller
2) rest files to view
3) BRanches to DB
## add to Helper
                        function get_All_Services(){
                    $ci = get_instance();
                    $where = array(
                        'services_status' => 1    );
                    $ci->db->where($where);
                    return $ci->db->get('services')->result_array();
                }


                function select_dropdown($table,$table_filed,$id,$status){
                    $ci = get_instance();
                    //$table = 'services';
                    //$table_filed = 'services_id';
                    //$id = 1;

                    $where=array(
                        $status=> 1,
                        $table_filed => $id
                            );
                            $ci->db->where($where);
                            return $ci->db->get($table)->result_array();
                        }
                        function populate_dropdown($table,$status){
                            $ci = get_instance();


                            $where=array(
                                $status=> 1,
                            );
                            $ci->db->where($where);
                            return $ci->db->get($table)->result_array();
                                }

