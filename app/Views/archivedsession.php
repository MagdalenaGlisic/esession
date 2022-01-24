<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex flex-column " style="width: 100%; height:auto;">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <p class="h3 mb-5">Details of session: <?= $session->name; ?></p>



                <div class="container">
                    <div class="row">
                        <div class="col-lg-12  d-flex flex-column justify-content-center">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Agenda Items:</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if (count($agendaItems) == 0) : ?>
                                        <tr>
                                            <td style="color:darkred;" class="h5 mb-3">There is no agenda items for this session.</td>
                                        </tr>
                                    <?php else : ?>
                                        <?php foreach ($agendaItems as $a) : ?>
                                            <tr>
                                                <th style="color: green;" scope="row"><?= $a->id; ?></th>
                                                <td><?= $a->name; ?></td>
                                                <td class="d-flex justify-content-end">
                                                    <a href="<?= base_url('agendaitems/status/' .$a->id)?>"><button class="btn btn-primary">View status</button></a>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                </tbody>
                            </table>
                        <?php endif; ?>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="col-lg-12  d-flex flex-column justify-content-center">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Conclusion of session</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if ($session->conclusion === '') : ?>
                                        <tr>
                                            <th scope="row" style="color:darkred;" class="h5 mb-5">There is no conclusion for this session.</th>
                                        <?php else : ?>
                                            <td><?= $session->conclusion; ?></td>
                                        </tr>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="col-lg-12  d-flex flex-column justify-content-center">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Active from</th>
                                        <th scope="col">Active until</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td> <?= $session->active_from; ?></td>
                                        <td><?= $session->active_until; ?></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
</section>


<?php $this->endSection(); ?>