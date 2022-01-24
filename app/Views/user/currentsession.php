<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex align-items-center" style="width: 100%; height:auto;">

    <div class="container">
        <div class="row">
            <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">

                <?php if (is_null($session)) : ?>

                    <p><?php echo view('useractivesessionerror') ?></p>
                <?php else : ?>
                    <p class="text-muted h3"> Active sesssion:</p>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Active from</th>
                                <th scope="col">Is_public</th>
                                <th scope="col">Discussion_until</th>
                                <th scope="col">Active until</th>
                            </tr>
                        </thead>
                        <tbody class="">
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
                                    <td class="d-flex justify-content-end">
                                        <?php if ($ai->is_accepted) : ?>
                                            <form method="get" action="agendaitem/<?= $ai->id; ?>">
                                                <button class="btn btn-sm btn-info">View</button>
                                            </form>
                                        <?php else : ?>
                                            Pending
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>


                    <a href="<?= base_url('user/sendproposals') ?>" class="btn-get-started scrollto m-5 d-flex justify-content-center">Send proposals for agenda
                        items</a>
                <?php endif; ?>
                <a href="<?= base_url('meetings/index') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>
            </div>
        </div>
    </div>
</section>

<?php $this->endSection(); ?>