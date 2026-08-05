<?php
// Tampilin semua data dari table user urutkan dari terkecil ke terbesar
// $query = mysqli_query($conn, "SELECT * FROM users ORDER BY id ASC");

// Tampilin semua data dari table user urutkan dari terbesar ke terkecil
$query = mysqli_query($conn, "SELECT * FROM contacts ORDER BY id DESC");
$row = mysqli_fetch_all($query, MYSQLI_ASSOC);

// Jika parameter edit ada
if (isset($_GET['edit'])) {
  $id = $_GET['edit'];
  $query = mysqli_query($conn, "SELECT * FROM contacts WHERE id='$id'");
  $row = mysqli_fetch_assoc($query);
}
// Jika parameter delete ada
if (isset($_GET['delete'])) {
  $delete = $_GET['delete'];
  $delete = mysqli_query($conn, "DELETE FROM contacts WHERE id='$delete'");
  header("location:app.php?page=contact&hapus=berhasil");
}

// echo $_SESSION['NAME'];
?>
<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row pt-2 pb-4">
  <div>
    <h3 class="fw-bold mb-3">Detail Contacts</h3>
    <h6 class="op-7 mb-2">Detail nih</h6>
  </div>
</div>
<div class="row">
  <div class="col-sm-6 col-md-12">
    <div class="card">
      <div class="card-body">
        <div class="row mb-3">
          <div class="col-md-4">
            <label for="name">Name</label>
            <input type="text" readonly class="form-control" value="<?= $row['name'] ?>">
          </div>
          <div class="col-md-4">
            <label for="email">Email</label>
            <input type="text" readonly class="form-control" value="<?= $row['email'] ?>">
          </div>
          <div class="col-md-4">
            <label for="subject">Subject</label>
            <input type="text" readonly class="form-control" value="<?= $row['subject'] ?>">
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <label for="message">Message</label>
            <textarea name="message" id="Message" readonly class="form-control"><?= $row['message'] ?></textarea>
          </div>
        </div>
        <hr>

        <h4 class="card-title">Detail Contact</h4>
        <p class="card-category">Detail Contact</p>
        <div class="table-responsive">
          <table class="table table-bordered">
            <tr>
              <th>Name</th>
              <td><?= $row['name'] ?></td>
            </tr>
            <tr>
              <th>Email</th>
              <td><?= $row['email'] ?></td>
            </tr>
            <tr>
              <th>Subject</th>
              <td><?= $row['subject'] ?></td>
            </tr>
            <tr>
              <th>Message</th>
              <td><?= $row['message'] ?></td>
            </tr>
          </table>
        </div>
      </div>
    </div>

  </div>
</div>