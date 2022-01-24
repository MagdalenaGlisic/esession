<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex align-items-center">

    <div class="container">
        <div class="row">
            <div class="col-lg-12  d-flex flex-column justify-content-center">


                <h1 class="m-5 d-flex justify-content-center text-muted">Create a session</h1>

                <form method="post" action="<?= base_url('admin/createsession') ?>">
                <?= view('Myth\Auth\Views\_message_block'); ?>
                <?= csrf_field(); ?>

                    <!-- Title input -->
                    <div class="form-outline mb-4">
                        <input type="text" name="title" id="form4Example1" class="form-control
                         <?php if(session('errors.title')) :?> is-invalid<?php endif; ?>" value="<?= old('title') ?>" />
                        <label class="form-label" for="form4Example1">Title of session</label>
                    </div>
            </div>
            <!-- Submit button -->
            <button class="btn btn-primary mb-5" type="submit" name="create">Create</button>
            </form>


        </div>
    </div>
    </div>

</section><!-- End Admin view -->
<?php $this->endSection(); ?>
