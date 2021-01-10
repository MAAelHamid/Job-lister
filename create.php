<?php
  include_once './config/init.php';
  
  // objects
  $job = new Job;
  
  // check category case
  if (isset($_POST['submit'])) {
    // create data array
    $data = array();
    $data['job_title'] = filter_var($_POST['job_title'],FILTER_SANITIZE_STRING);
    $data['company'] = filter_var($_POST['company'],FILTER_SANITIZE_STRING);
    $data['cat_id'] = filter_var($_POST['cat_id'],FILTER_SANITIZE_STRING);
    $data['description'] = filter_var($_POST['description'],FILTER_SANITIZE_STRING);
    $data['salary'] = filter_var($_POST['salary'],FILTER_SANITIZE_STRING);
    $data['location'] = filter_var($_POST['location'],FILTER_SANITIZE_STRING);
    $data['contact_user'] = filter_var($_POST['contact_user'],FILTER_SANITIZE_STRING);
    $data['contact_email'] = filter_var($_POST['contact_email'],FILTER_SANITIZE_EMAIL);

    if ($job->create($data)) {
      redirect('index.php', 'Your Job has been Listed', 'success');
    } else {
      redirect('index.php', 'Something Went Wrong', 'error');
    }
  } 
  
  // template attributes
  $template = new Template('template/createJob.php');
  $template->categories = $job->getAllCategory();
  echo $template;
?>