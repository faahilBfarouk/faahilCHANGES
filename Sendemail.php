<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sendemail extends CI_Controller {

	public function index()
	{
		$this->load->view('sendemail');
	}

	public function send()
	{
		$subject = 'Contact Request From - ' . $this->input->post("name");
		$service =  $this->input->post("service");


			$config = array(
    'protocol' => 'smtp', // 'mail', 'sendmail', or 'smtp'
    'smtp_host' => 'mail.codingmagic.net', 
    'smtp_port' => 465,
    'smtp_user' => 'sabah@codingmagic.net
    ',
    'smtp_pass' => 'Sabah10178$',
    'smtp_crypto' => 'ssl', //can be 'ssl' or 'tls' for example
    'mailtype' => 'text', //plaintext 'text' mails or 'html'
    'smtp_timeout' => '4', //in seconds
    'charset' => 'iso-8859-1',
    'wordwrap' => TRUE
				);
		    $this->load->library('email', $config);
		    $this->email->set_newline("\r\n");
		    $this->email->from($this->input->post("email"));
		    $this->email->to('faahil.bfarouk@gmail.com');
		    $this->email->subject($subject);
	       // $this->email->message($message);
	        if($this->email->send())
	        {
	        
	        		$this->session->set_flashdata('message', 'Application Sended');
	        		
	        }
	        else
	        {
	        		$this->session->set_flashdata('message', 'There is an error in email send');
	        	//	redirect('sendemail');
	        
	        }
	    }
	    
	}



?>
