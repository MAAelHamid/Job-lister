<?php include_once 'inc/header.php';?>

<div class="container my-5">
  <!-- jumbotron -->
  <div class="jumbotron mb-4 text-center">
    <h2 class="my-4">* Find A Job *</h2>
    <form method="GET" action="index.php">
      <select name="category" class="form-select form-select-md mb-4">
        <option selected> Choose a Category </option>
        <?php
          foreach ($categories as $cat) {
            echo "<option value='$cat->id'>$cat->name</option>";
          }
        ?>
      </select>
      <input type="submit" class="btn btn-info btn-md px-4 find" value="Find">
    </form>
  </div>
  <h3 class="mb-3"><?=$title?></h3>
  <?php foreach($jobs as $job) {?>
    <div class="card mb-5">
    <div class="card-body">
      <h5 class="card-title"><?=$job->job_title?></h5>
      <p class="card-text"><?=$job->cname .' : '. $job->company?></p>
    </div>
    <ul class="list-group list-group-flush">
      <li class="list-group-item">Description : <br><?=$job->description?></li>
      <li class="list-group-item">Salary : <?=$job->salary?></li>
      <li class="list-group-item">Location : <?=$job->location?></li>
      <li class="list-group-item">Contact User : <?=$job->contact_user?></li>
      <li class="list-group-item">Contact Email : <?=$job->contact_email?> <span style="float :right">Post Date : <?=$job->date?></span></li>
    </ul>
  </div>
  <?php
  };
  ?>
<?php include_once 'inc/footer.php';?>