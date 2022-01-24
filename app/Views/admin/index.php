<?php
$this->extend('layout');
$this->section('content');

?>



<!-- ======= Admion view ======= -->
<?php helper('auth');
if(in_groups('admin')) :?>
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

                
                <div data-aos="fade-up" data-aos-delay="800"  class="d-flex justify-content-center">
                    <a href="<?= base_url('admin/createsession.php') ?>" class="btn-get-started scrollto m-2">Create a session</a>
                    <a href="<?= base_url('login') ?>" class="btn-get-started scrollto m-2">Agenda proposals of session</a>
                    <a href="<?= base_url('login') ?>" class="btn-get-started scrollto m-2">bla bla</a>
                </div>
            </div>
        </div>
    </div>

</section><!-- End Admin view -->
<?php endif;?>



<?php $this->endSection(); ?>