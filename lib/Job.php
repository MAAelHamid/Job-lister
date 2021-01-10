<?php
  class Job {
    private $db;

    public function __construct() {
      $this->db = new Database;
    }

    // get all jobs
    public function getAllJobs() {
      $this->db->query("SELECT jobs.*, category.name as cname 
          FROM jobs
          INNER JOIN category
          ON jobs.cat_id = category.id
          ORDER BY date DESC
      ");
      // assign result
      $result = $this->db->resultSet();
      return $result;
    }

    /**
     * Get All Category
     */
    public function getAllCategory() {
      $this->db->query("SELECT * FROM category");
      // assign result
      $result = $this->db->resultSet();
      return $result;
    }

    /**
     * Get jobs by it's Category ID
     */
    public function getJobsByCategory($category) {
      $this->db->query("SELECT * , category.name as cname 
          FROM jobs
          INNER JOIN category
          ON jobs.cat_id = category.id
          WHERE cat_id = $category
          ORDER BY date DESC
      ");
      // assign result
      $result = $this->db->resultSet();
      return $result; 
    }
    
    /**
     * Get Specific Category by it's ID
     */
    public function getCategoryByID($category) {
      $this->db->query("SELECT name FROM category WHERE id = :category");
      $this->db->bind(':category', $category);
      $row = $this->db->single();
      return $row; 
    }

    /**
     * Create a new job
     */
    public function create($data) {
      $this->db->query("INSERT INTO jobs
          (cat_id, company, job_title, description,
          salary, location, contact_user, contact_email, date)
          VALUES 
          (:cat_id, :company, :job_title, :description,
          :salary, :location, :contact_user, :contact_email, :date)
      ");
      $this->db->bind(':cat_id', $data['cat_id']);
      $this->db->bind(':company', $data['company']);
      $this->db->bind(':job_title', $data['job_title']);
      $this->db->bind(':description', $data['description']);
      $this->db->bind(':salary', $data['salary']);
      $this->db->bind(':location', $data['location']);
      $this->db->bind(':contact_user', $data['contact_user']);
      $this->db->bind(':contact_email', $data['contact_email']);
      $this->db->bind(':date', $data['date']);
      if ($this->db->execute()) {
        return true;
      } else {
        return false;
      }
    }

  }
?>