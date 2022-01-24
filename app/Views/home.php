<?php
$this->extend('layout');
$this->section('content');

?>
<!-- <?php
      if (logged_in()) {
        echo "Hello, " . user()->username;
      } else {
        echo 'Welcome';
      }
      ?> -->

<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">

  <div class="container">
    <div class="row">
      <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
        <?php if (!logged_in()) : ?>
          <h1 data-aos="fade-up">Electronic session</h1>
          <h2 data-aos="fade-up" data-aos-delay="400">Join us in an electronic session</h2>
          <div data-aos="fade-up" data-aos-delay="800">
            <a href="<?= base_url('login') ?>" class="btn-get-started scrollto">Get Started</a>
          </div>
        <?php endif; ?>
        <?php if (logged_in()) : ?>
          <h1 data-aos="fade-up"><?= 'Welcome ' . user()->username; ?></h1>
          <h2 data-aos="fade-up" data-aos-delay="400">Join us in meetings</h2>
          <div data-aos="fade-up" data-aos-delay="800">
            <a href="<?= base_url('meetings/index') ?>" class="btn-get-started scrollto">Meettings</a>
          </div>
        <?php endif; ?>

      </div>
      <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
        <img src="<?= base_url('assets/img/hero-img.png'); ?>" class="img-fluid animated" alt="">
      </div>
    </div>
  </div>

</section><!-- End Hero -->

<main id="main">



  <!-- ======= Archive Section ======= -->
  <section id="archive" class="about">
    <div class="container">

      <div class="section-title" data-aos="fade-up">
        <h2>Archived session</h2>
      </div>

      <?php if (count($archived) == 0) : ?>
        <div class="container">
          <div class="row">
            <div class="col-lg-12  d-flex flex-column justify-content-center">
              <p class="h5">There is no archived session.</p>

            <?php else : ?>
              <div class="container">
                <div class="row">
                  <div class="col-lg-12  d-flex flex-column justify-content-center">
                    <!-- ako je archived == true show me all archived session
               -->

                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Name</th>
                          <th scope="col"></th>
                          <th scope="col"></th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php foreach ($archived as $s) : ?>
                          <tr>
                            <th scope="row"><?= $s->id; ?></th>
                            <td><?= $s->name; ?></td>
                            <td class="d-flex justify-content-end">
                              <a href="<?= base_url('home/viewArchivedSession/' . $s->id) ?>"><button class="btn btn-m btn-primary ">View session</button></a>
                            </td>
                            <td></td>
                          </tr>
                        <?php endforeach; ?>
                      </tbody>
                    </table>

                  <?php endif; ?>


                  </div>
                </div>
              </div>
            </div>
  </section>



  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">
    <div class="container">
      <div class="section-title" data-aos="fade-up">
        <h2>Contact Us</h2>
      </div>


      <div class="row">

        <div class="col-lg-6 col-md-6  d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
          <div class="contact-about ">
            <h3>Electronic session</h3>
            <p>Cras fermentum odio eu feugiat. Justo eget magna fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
            <div class="social-links">
              <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </div>

        <div class="col-lg-6 col-md-6 mt-4 mt-md-0  d-flex justify-content-center" data-aos="fade-up" data-aos-delay="200">
          <div class="info">
            <div>
              <i class="ri-map-pin-line"></i>
              <p>King Aleksandar Boulevard<br>Serbia, Belgrade</p>
            </div>

            <div>
              <i class="ri-mail-send-line"></i>
              <p>info@electronicsession.com</p>
            </div>

            <div>
            <i class="ri-phone-fill"></i>
              <p>+381 22 22 22 </p>
            </div>

          </div>
        </div>

        <!-- <div class="col-lg-5 col-md-12" data-aos="fade-up" data-aos-delay="300">
          <form action="forms/contact.php" method="post" role="form" class="php-email-form">
            <div class="form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
            </div>
            <div class="form-group">
              <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
            </div>
            <div class="my-3">
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your message has been sent. Thank you!</div>
            </div>
            <div class="text-center"><button type="submit">Send Message</button></div>
          </form>
        </div> -->

      </div>

    </div>
  </section><!-- End Contact Section -->

</main><!-- End #main -->

<?php $this->endSection(); ?>