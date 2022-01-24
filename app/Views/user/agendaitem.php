<?php
$this->extend('layout');
$this->section('content');

?>

<section id="hero" class=" h-auto d-flex align-items-center">

    <div class="container" >
        <div class="row">
            <div class="col-lg-12 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-start">
                <p class="h3 mb-5 text-muted h3 ">Agenda Item: <?= $agendaItem->name; ?></p>

                <?php if ($agendaItem->is_vote_enabled) : ?>

                    <?php if ($voted !== null) : ?>
                        Last Voted: <?= $voted->date_voted; ?>
                    <?php endif; ?>
                    <br>
                    <form method="post" action="/user/voteagendaitem/<?= $agendaItem->id; ?>">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="vote" id="vote_for" value="for" <?php if ($voted !== null && $voted->for) : ?> checked <?php endif ?>>
                            <label class="form-check-label" for="vote_for">
                                For
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="vote" id="vote_against" value="against" <?php if ($voted !== null && $voted->against) : ?> checked <?php endif ?>>
                            <label class="form-check-label" for="vote_against">
                                Against
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="vote" id="vote_restrained" value="restrained" <?php if ($voted !== null && $voted->restrained) : ?> checked <?php endif ?>>
                            <label class="form-check-label" for="vote_restrained">
                                Restrained
                            </label>
                        </div><br>
                        <?php if ($voted === null) : ?>
                            <button type="submit" class="btn btn-sm btn-success">Vote</button>
                        <?php else : ?>
                            <button type="submit" class="btn btn-sm btn-success mb-5">Vote Again</button><br>
                        <?php endif; ?>
                    </form>
                <?php endif; ?>

                <br>
                <br>

                <?php if ($agendaItem->is_discussion_enabled) : ?>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                                <p class="h4 mt-3 text-muted h3">Discussion</p>

                                <form method="post" action="/user/docomment/<?= $agendaItem->id; ?>">
                                    <div class="form-outline mb-4">
                                        <textarea class="form-control" id="form4Example3" rows="4" name="discussion"><?php if ($comment !== null) : ?><?= $comment->content; ?><?php endif; ?></textarea>

                                    </div><br>
                                    <?php if ($comment === null) : ?>
                                        <button type="submit" class="btn btn-sm btn-success">Send Comment</button><br>
                                    <?php else : ?>
                                        <button type="submit" class="btn btn-sm btn-success mb-5">Edit Comment</button><br>
                                    <?php endif; ?>
                                </form>
                            </div>
                        </div>

                    <?php endif; ?>
                    <?php if (!$agendaItem->is_discussion_enabled && !$agendaItem->is_vote_enabled) : ?>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                                    <p>Please wait for admin to enable voting and disscusion.</p>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                    <a href="<?= base_url('user/currentsession') ?>"><i class="bi bi-box-arrow-left"></i>&nbsp;Go back</a>
</section>

<?php $this->endSection(); ?>