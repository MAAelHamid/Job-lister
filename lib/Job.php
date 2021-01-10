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
     * Get Specific Category by it's ID
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
     * 
     * 
     */
    public function getCategoryByID($category) {
      $this->db->query("SELECT name FROM category WHERE id = $category");
      $row = $this->db->single();
      return $row; 
    }
  }
?>