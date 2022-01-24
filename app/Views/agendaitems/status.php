<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex align-items-center">

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Agenda Item: <?= $agendaItem->name; ?></th>
                        </tr>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>Voting for this agenda item:</th>
                        </tr>
                        <tr>
                            <td>For: <?= $for; ?></td>
                        </tr>
                        <tr>
                            <td>Against: <?= $against; ?></td>
                        </tr>
                        <tr>
                            <td>Restrained: <?= $restrained; ?></td>
                        </tr>
                        <tr>
                        <tr>
                            <th>Discussion:</th>
                        </tr>
                            <td>All comments: <?= count($comments); ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<?php $this->endSection(); ?>