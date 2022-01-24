<?php
$this->extend('layout');
$this->section('content');

?>


<section id="hero" class="d-flex flex-column " style="width: 100%; height:auto;">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h4 class="h2 text-muted d-flex justify-content-center">Conclusions of sessions</h4>
                <?php foreach ($sessions as $session) : ?>
                    <p class="h5">Name of session: <?= $session->name; ?></p>

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
                                            <tr >
                                                <th scope="row" style="color:darkred;" class="h5 mb-5">There is no conclusion for this session.
                                                    You can't send a remark.</th>
                                            <?php else : ?>
                                                <td><?= $session->conclusion; ?></td>
                                            </tr>
                                            <tr class=" d-flex justify-content-end">
                                                <td>
                                                     <a href="sendremarks/<?= $session->id; ?>"><button class="btn btn-primary">Send remark</button></a>
                                                </td>
                                            </tr>
                                            <?php endif; ?>
                                    </tbody>
                                </table>
                               
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
                <a href="<?= base_url('meetings/index') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>
</section>




<?php $this->endSection(); ?>