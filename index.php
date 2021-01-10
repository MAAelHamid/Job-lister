<?php
  include_once './config/init.php';
  
  // objects
  $job = new Job;
  $template = new Template('template/frontPage.php');
  
  // check category case
  $category = isset($_GET['category']) ? $_GET['category'] : NULL;
  if ($category) {
    $template->jobs = $job->getJobsByCategory($category);
    $template->title = "Jobs IN ".$job->getCategoryByID($category)->name;
  } else {
    $template->title = 'Latest Job';
    $template->jobs = $job->getAllJobs();  
  }
  // template attributes
  $template->categories = $job->getAllCategory();
  
  echo $template;

?>