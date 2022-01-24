<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex align-items-center">

    <div class="container">
        <div class="row">
            <div class="col-lg-12  d-flex flex-column justify-content-center">

                <form method="post" action="dosendmaterials" enctype="multipart/form-data">
                    <h1 class="m-5 d-flex justify-content-center text-muted">Send materials for session</h1>
                    <?= view('Myth\Auth\Views\_message_block') ?>
                    <?= csrf_field(); ?>
                    <!-- Title input -->
                    <div class="form-outline mb-4">
                        <input name="title" type="text" id="form4Example1" class="form-control
                        <?php if (session('errors.title')) : ?>is_invalid <?php endif; ?>" value="<?= old('title') ?>" />
                        <label class="form-label" for="form4Example1">Title</label>
                    </div>

                    <!-- Upload files -->
                    <div class="form-outline mb-4">
                        <label class="form-label" for="formFileMultiple">Select a documents</label>
                        <input name="file" type="file" class="form-control  
                     <?php if (session('errors.file')) : ?>is_invalid <?php endif; ?>" id="formFileMultiple" value="<?= old('file') ?>" />
                    </div>
            </div>


            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">Send</button>
            </form>
            <a href="<?= base_url('meetings/index') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>

        </div>
    </div>
    </div>

</section><!-- End Admin view -->
<?php $this->endSection(); ?>