<?php
$this->extend('layout');
$this->section('content');

?>

<section style="width: 100%; height:auto;" id="hero" class="d-flex align-items-center">

  <div class="container">
    <div class="row">
      <div class="col-12">
        <?php if (is_null($session)) : ?>
          <p><?php echo view('activesessionerror') ?></p>
        <?php else : ?>
          <p>Active sesssion:</p>
          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Active from</th>
                <th scope="col">Public</th>
                <th scope="col">Discussion until</th>
                <th scope="col">Active until</th>
              </tr>
            </thead>
            <tbody class=" ">
              <tr>
                <th scope="row"><?= $session->id; ?></th>
                <td><?= $session->name; ?></td>
                <td><?= $session->active_from; ?></td>
                <td><?= $session->is_public; ?></td>
                <td><?= $session->discussion_until; ?></td>
                <td><?= $session->active_until; ?></td>
              </tr>

            </tbody>
          </table>
          <table class="table">
            <thead>
              <tr>
                <th scope="col">Agenda Items for <?= $session->name; ?></th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col"></th>
              </tr>
            </thead>
            <tbody>

              <?php foreach ($agendaItems as $ai) : ?>
                <tr>
                  <th scope="row"><?= $ai->id; ?></th>
                  <td><?= $ai->name; ?></td>
                  <?php if ($ai->is_accepted) : ?>
                    <td class="d-flex justify-content-end">
                      <form method="get" action="agendaitem/<?= $ai->id; ?>">
                        <button class="btn btn-sm btn-info">View</button>
                      </form>
                    </td>
                  <?php else : ?>
                    <td class="d-flex justify-content-end">
                      <form method="post" action="doagendaitemresolve">
                        <input hidden name="accept" value="true">
                        <input hidden name="id" value="<?= $ai->id; ?>">
                        <button class="btn btn-sm btn-success">Accept</button>
                      </form>
                    </td>
                    <td class="justify-content-end">
                      <form method="post" action="doagendaitemresolve">
                        <input hidden name="accept" value="false">
                        <input hidden name="id" value="<?= $ai->id; ?>">
                        <button class="btn btn-sm btn-danger">Reject</button>
                      </form>
                    </td>

                  <?php endif; ?>
                </tr>
              <?php endforeach; ?>

            </tbody>
          </table>


          <div class="container">
            <div class="row">
              <div class="col-12 d-flex">
                <?php if ($session->conclusion === '') : ?>
                  <a href="<?= base_url('admin/conclusion') ?>"><button class="btn btn-block btn-primary m-2">Get conclusion</button></a>
                <?php else : ?>
                  <button class="btn btn-block btn-primary disabled">Get conclusion</button>
                <?php endif; ?>
                <form method="post" action="archivesession">
                  <input hidden name="archive" value="true">
                  <button class="btn btn-block btn-success m-2">Archive session</button>
                </form>
              </div>
            </div>
          </div>

        <?php endif; ?>
      </div>
    </div>
  </div>
</section>

<?php $this->endSection(); ?>