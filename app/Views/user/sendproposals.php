<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex align-items-center">

    <div class="container">
        <div class="row">
            <div class="col-lg-12  d-flex flex-column justify-content-center">

                <form method="post" action="dosendproposal">
                    <h1 class="m-5 d-flex justify-content-center text-muted">Send proposals for agenda items</h1>

                    <!-- Prposal input -->
                    <div class="form-outline mb-4">
                        <textarea class="form-control" id="form4Example3" rows="4" name="proposal"></textarea>
                        <label class="form-label" for="form4Example3">Proposals for agenda items</label>
                    </div>

                    <!-- Upload files
                       <div class="form-outline mb-4">
                       <label class="form-label" for="formFileMultiple">Select a documents</label>
                        <input type="file" class="form-control" id="formFileMultiple" />
                       </div> -->

                    <!-- Submit button -->
                    <button type="submit" class="btn btn-primary btn-block mb-4">Send</button>
                </form>
                <a href="<?= base_url('user/currentsession') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>
            </div>
        </div>
    </div>
</section><!-- End Admin view -->
<?php $this->endSection(); ?>