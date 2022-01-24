<?php
 $this->extend('layout');
 $this->section('content');

?>

<!-- ======= Error Section ======= -->
<section id="hero" class="d-flex align-items-center">

<div class="container">
  <div class="row">
    <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
      <h4 data-aos="fade-up"><?= 'There is no active session so you can not send a remark.'; ?></h4>
      <div data-aos="fade-up" data-aos-delay="800">
      <a href="<?= base_url('meetings/index') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>
      </div>
    </div>
    <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
      <img src="<?= base_url('assets/img/hero-img.png');?>" class="img-fluid animated" alt="">
    </div>
  </div>
</div>

</section><!-- End Hero -->


<?php $this->endSection(); ?>
