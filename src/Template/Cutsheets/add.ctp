<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Cutsheets'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="cutsheets form large-9 medium-8 columns content">
    <?= $this->Form->create($cutsheet) ?>
    <fieldset>
        <legend><?= __('Add Cutsheet') ?></legend>
        <?php
            echo $this->Form->input('section');
            echo $this->Form->input('colour');
            echo $this->Form->input('cut_to_size');
            echo $this->Form->input('qty');
            echo $this->Form->input('notes');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
