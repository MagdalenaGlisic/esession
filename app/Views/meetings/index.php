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

                    <!-- <h2 data-aos="fade-up" data-aos-delay="400"  class="d-flex justify-content-center">Join the current session</h2> -->
                    <div data-aos="fade-up" data-aos-delay="800" class="d-flex justify-content-center">
                        <a href="<?= base_url('user/currentsession') ?>" class="btn-get-started scrollto m-2">Join current session</a>
                        <a href="<?= base_url('user/sendmaterials') ?>" class="btn-get-started scrollto m-2">Send materials for session</a>
                        <a href="<?= base_url('user/viewConclusion') ?>" class="btn-get-started scrollto m-2">Send remarks</a>

                    </div>
                </div>
            </div>
        </div>

    </section><!-- End User view -->
<?php endif; ?>

<!-- ======= Admion view ======= -->
<?php helper('auth');
if (in_groups('admin')) : ?>
    <section id="hero" class="d-flex align-items-center" style="background-color: 	#F5F5F5;">

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


                    <div data-aos="fade-up" data-aos-delay="800" class="d-flex justify-content-center">
                        <a href="<?= base_url('admin/createsession') ?>" class="btn-get-started scrollto m-2">Create a session</a>
                        <!-- <a href="<?= base_url('admin/proposal') ?>" class="btn-get-started scrollto m-2">Agenda proposals of session</a> -->
                        <a href="<?= base_url('admin/activesession') ?>" class="btn-get-started scrollto m-2">Active session</a>
                    </div>
                </div>
            </div>
        </div>

    </section><!-- End Admin  -->
<?php endif; ?>


<?php $this->endSection(); ?>


</section>