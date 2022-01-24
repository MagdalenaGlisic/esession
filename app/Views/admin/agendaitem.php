<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class="d-flex align-items-center">

    <div class="container">
        <div class="row">
            <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                <p class="h3 mb-5">Agenda Item: <?= $agendaItem->name; ?></p>
                <form method="post" action="/admin/updateagendaitem/<?= $agendaItem->id; ?>">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="is_vote_enabled" value="true" id="flexCheckDefault"
                            <?php if ($agendaItem->is_vote_enabled): ?> checked <?php endif ?>
                        >
                        <label class="form-check-label" for="flexCheckDefault">
                            Enable vote
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="is_discussion_enabled" value="true" id="flexCheckChecked"
                            <?php if ($agendaItem->is_discussion_enabled): ?> checked <?php endif ?>
                        >
                        <label class="form-check-label" for="flexCheckChecked">
                            Enable discuss
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="is_public_voting" value="true" id="flexCheckChecked"
                            <?php if ($agendaItem->is_public_voting): ?> checked <?php endif ?>
                        >
                        <label class="form-check-label" for="flexCheckChecked">
                            Public vote
                        </label>
                    </div>
                    <button type="submit" class="btn btn-sm btn-success">Save</button>
                </form>
                <br>
                <a href="<?= base_url('admin/activesession') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>

            </div>
        </div>
    </div>
</section>

<?php $this->endSection(); ?>
