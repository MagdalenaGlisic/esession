<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-12  d-flex flex-column  justify-content-center">

                <?php if ($session->archived === "1" && $session->conclusion === '') : ?>
                    <p>There is no conclusion for this session so you can not send remark.
                        Wait for admin to create a conclusion.
                    </p>
                    <a href="<?= base_url('') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>

                <?php else : ?>
                    <form action="/user/dosendremarks/<?= $session->id; ?>" method="post">
                        <h1 class="m-5 d-flex justify-content-center text-muted">Send a remark</h1>
                        <!-- Message input -->
                        <div class="form-outline mb-4">
                            <textarea name="remark" class="form-control" id="form4Example3" rows="4"></textarea>
                            <label class="form-label" for="form4Example3">Text of remark</label>
                        </div>
                        <!-- Submit button -->
                        <button type="submit" class="btn btn-primary btn-block mb-4">Send</button>
                    </form>

                <?php endif; ?>
                <a href="<?= base_url('user/viewConclusion') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>




            </div>
        </div>
    </div><br>

</section><!-- End Admin view -->

<?php $this->endSection(); ?>