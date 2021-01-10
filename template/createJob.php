<?php include_once 'inc/header.php';?>
  <h2 class="mb-4" id="cHeader">Create Job Listing</h2>
  <form action="create.php" method="POST" class="create">
    <div class="form-group mb-3">
      <label class="mb-1">Job Title</label>
      <input type="text" name="job_title" class="form-control" required>
    </div>
    <div class="form-group mb-3">
      <label class="mb-1">Company</label>
      <input type="text" name="company" class="form-control" required>
    </div>
    <div class="form-group mb-3">
      <label class="mb-1">Category</label>
      <select name="cat_id" class="form-select form-select-md mb-4" required>
        <option value="" disabled selected> Choose a Category </option>
        <?php
          foreach ($categories as $cat) {
            echo "<option value='$cat->id'>$cat->name</option>";
          }
        ?>
      </select>
    </div>
    <div class="form-group mb-3">
      <label class="mb-1">Description</label>
      <input type="text" name="description" class="form-control" required>
    </div>
    <div class="form-group mb-3">
      <label class="mb-1">Salary</label>
      <input type="text" name="salary" class="form-control" required>
    </div>
    <div class="form-group mb-3">
      <label class="mb-1">Location</label>
      <input type="text" name="location" class="form-control" required>
    </div>
    <div class="form-group mb-3">
      <label class="mb-1">Contact User</label>
      <input type="text" name="contact_user" class="form-control" required>
    </div>
    <div class="form-group mb-3">
      <label class="mb-1">Contact Email</label>
      <input type="email" name="contact_email" class="form-control" required>
    </div>
    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
  </form>
<?php include_once 'inc/footer.php';?>