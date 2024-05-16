<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Category extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->get_user();
    }

    public function add_category()
    {
        $data                = array();
        $data['maincontent'] = $this->load->view('admin/pages/add_category', '', true);
        $this->load->view('admin/master', $data);
    }

    public function manage_category()
    {
        $data                 = array();
        $data['all_categroy'] = $this->category_model->getall_category_info();
        $data['maincontent']  = $this->load->view('admin/pages/manage_category', $data, true);
        $this->load->view('admin/master', $data);
    }
    
    
    


public function save_category(){
$this->load->library('form_validation');
$this->load->library('upload');
$this->load->helper('string');

// Define validation rules
$this->form_validation->set_rules('category_name', 'Category Name', 'trim|required');
$this->form_validation->set_rules('category_url_name', 'category_url_name', 'trim|required');
$this->form_validation->set_rules('category_description', 'Category Description', 'trim|required');
$this->form_validation->set_rules('publication_status', 'Publication Status', 'trim|required');
$this->form_validation->set_rules('bgcolor', 'Background Color', 'trim|required');


    if ($this->form_validation->run() == FALSE) {
        // $this->load->view('super_admin/company_list/error');


    } else {

        $cat_image = $_FILES['cat_image']['name'];
        if ($cat_image != "") {
            $cat_image = random_string('alnum', 10) . '.jpg';

            //insert image
            $config['file_name'] = $cat_image;
            $config['upload_path'] = 'uploads/category';
            $config['allowed_types'] = 'gif|jpg|jpeg|png';
            $config['max_size']         = '100000';
            $config['encrypt_name']     = false;
            $config['image_library'] = 'gd2';
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            $this->upload->do_upload('cat_image');

            $file_data = $this->upload->data();
        } else {
            $cat_image = "default.png";
        }

        $data = array(
            'category_name'        => $this->input->post('category_name'),
            'category_url_name'              => $this->input->post('category_url_name'),
            'category_description' => $this->input->post('category_description'),
            'publication_status'   => $this->input->post('publication_status'),
            'bgcolor'              => $this->input->post('bgcolor'),
            'cat_image'              => $cat_image,
        );

        $this->db->insert('tbl_category', $data);
        redirect('manage/category');
        return $this->session->set_flashdata('message', 'Added successfully');
    }


}


    public function delete_category($id)
    {
        $result = $this->category_model->delete_category_info($id);
        if ($result) {
            $this->session->set_flashdata('message', 'Category Deleted Sucessfully');
            redirect('manage/category');
        } else {
            $this->session->set_flashdata('message', 'Category Deleted Failed');
            redirect('manage/category');
        }
    }

    public function edit_category($id)
    {
        $data                        = array();
        $data['category_info_by_id'] = $this->category_model->edit_category_info($id);
        $data['maincontent']         = $this->load->view('admin/pages/edit_category', $data, true);
        $this->load->view('admin/master', $data);
    }

    public function update_category($id)
    {
        $data                         = array();
        $data['category_url_name']        = $this->input->post('category_url_name');
        $data['category_name']        = $this->input->post('category_name');
        $data['category_description'] = $this->input->post('category_description');
        $data['publication_status']   = $this->input->post('publication_status');

        $this->form_validation->set_rules('category_url_name', 'category_url_name', 'trim|required');
        $this->form_validation->set_rules('category_name', 'Category Name', 'trim|required');
        $this->form_validation->set_rules('category_description', 'Category Description', 'trim|required');
        $this->form_validation->set_rules('publication_status', 'Publication Status', 'trim|required');

        if ($this->form_validation->run() == true) {
            $result = $this->category_model->update_category_info($data, $id);
            if ($result) {
                $this->session->set_flashdata('message', 'Category Update Sucessfully');
                redirect('manage/category');
            } else {
                $this->session->set_flashdata('message', 'Category Update Failed');
                redirect('manage/category');
            }
        } else {
            $this->session->set_flashdata('message', validation_errors());
            redirect('add/category');
        }

    }

    public function published_category($id)
    {
        $result = $this->category_model->published_category_info($id);
        if ($result) {
            $this->session->set_flashdata('message', 'Published Category Sucessfully');
            redirect('manage/category');
        } else {
            $this->session->set_flashdata('message', 'Published Category  Failed');
            redirect('manage/category');
        }
    }

    public function unpublished_category($id)
    {
        $result = $this->category_model->unpublished_category_info($id);
        if ($result) {
            $this->session->set_flashdata('message', 'UnPublished Category Sucessfully');
            redirect('manage/category');
        } else {
            $this->session->set_flashdata('message', 'UnPublished Category  Failed');
            redirect('manage/category');
        }
    }

    public function get_user()
    {

        $email = $this->session->userdata('user_email');
        $name  = $this->session->userdata('user_name');
        $id    = $this->session->userdata('user_id');

        if ($email == false) {
            redirect('admin');
        }

    }

}
