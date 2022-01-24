<?php
$this->extend('layout');
$this->section('content');

?>



<!-- ======= User view ======= -->
<?php helper('auth');
if (in_groups('user')) : ?>
    <section id="hero" class="d-flex align-items-center">

        <div class="container">
            <div class="row">
                <div class="col-lg-12  d-flex flex-column justify-content-center">
                    <h1 data-aos="fade-up" class="d-flex justify-content-center">
                        <?php if (logged_in()) {
                            echo "Welcome " . user()->username;
                        } else {
                            echo 'Welcome';
                        }
                        ?></h1>

                    <!-- <h2 data-aos="fade-up" data-aos-delay="400" class="d-flex justify-content-center">Join the current session</h2> -->
                    <div data-aos="fade-up" data-aos-delay="800" class="d-flex justify-content-center">
                        <a href="<?= base_url('login') ?>" class="btn-get-started scrollto m-2">Current session</a>
                        <a href="<?= base_url('login') ?>" class="btn-get-started scrollto m-2">Send materials for session</a>
                        <a href="<?= base_url('login') ?>" class="btn-get-started scrollto m-2">Send remarks</a>
                    </div>
                </div>
            </div>
        </div>

    </section><!-- End User view -->
<?php endif; ?>

</section><!-- End Hero -->



<?php $this->endSection(); ?>