<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                <form action="dosendconclusion" method="post">
                    <div class="form-group">
                        <label for="conclusion">Conclusion</label>
                        <textarea class="form-control rounded-0" id="conclusion" name="conclusion" rows="3"></textarea>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-primary mt-5 mb-5">Send conclusion</button>
                    </div>
                </form>
                <a href="<?= base_url('admin/activesession') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>
            </div>
        </div>
    </div>

</section>


<?php $this->endSection(); ?>
