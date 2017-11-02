<div class="card-box">

    <?= $this->Flash->render() ?>

    <h1>Drop down values</h1>

    <hr>
    <div class="row">

        <?= $this->Form->create($dropdowns, ['class' => 'delete-form' ,'url' => ['action' => 'delete'], 'type' => 'delete']) ?>
            <?= $this->Form->hidden('id', ['value' => '']) ?>
        <?= $this->Form->end() ?>


        <div class="col-md-6 col-sm-12 table-responsive">
            <table class="table table-hover drop-downs-table small-padding">


                <tr>
                    <td><h5>Standard</h5></td>
                    <td>

                        <select id="standard" class="form-control">

                            <?php foreach ($dropdowns as $dropdown): ?>
                                <?php if ($dropdown->type == 'Standard Color'): ?>
                                    <option value="<?= $dropdown->id ?>"><?= h($dropdown->name); ?></option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>

                    </td>
                    <td>

                        <?= $this->Form->button(__('Delete'), ['class' => 'btn btn-danger btn-delete btn-block waves-effect waves-light', 'data-type' => 'Standard Color']); ?>


                    </td>
                </tr>
                <tr>
                    <td><h5>Color 1</h5></td>
                    <td>

                        <select id="color1" class="form-control">

                            <?php foreach ($dropdowns as $dropdown): ?>
                                <?php if ($dropdown->type == 'Color 1'): ?>
                                    <option value="<?= $dropdown->id ?>"><?= h($dropdown->name); ?></option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>

                    </td>
                    <td><?= $this->Form->button(__('Delete'), ['class' => 'btn btn-danger btn-delete btn-block waves-effect waves-light', 'data-type' => 'Color 1']); ?></td>
                </tr>
                <tr>
                    <td><h5>Color 2</h5></td>
                    <td>

                        <select id="color2" class="form-control">

                            <?php foreach ($dropdowns as $dropdown): ?>
                                <?php if ($dropdown->type == 'Color 2'): ?>
                                    <option value="<?= $dropdown->id ?>"><?= h($dropdown->name); ?></option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>

                    </td>
                    <td><?= $this->Form->button(__('Delete'), ['class' => 'btn btn-danger btn-delete btn-block waves-effect waves-light', 'data-type' => 'Color 2']); ?></td>
                </tr>

                <tr>
                    <td><h5>Color 3</h5></td>
                    <td>

                        <select id="color3" class="form-control">

                            <?php foreach ($dropdowns as $dropdown): ?>
                                <?php if ($dropdown->type == 'Color 3'): ?>
                                    <option value="<?= $dropdown->id ?>"><?= h($dropdown->name); ?></option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>

                    </td>
                    <td><?= $this->Form->button(__('Delete'), ['class' => 'btn btn-danger btn-delete btn-block waves-effect waves-light', 'data-type' => 'Color 3']); ?></td>
                </tr>

                <tr>
                    <td><h5>Color 4</h5></td>
                    <td>

                        <select id="color4" class="form-control">

                            <?php foreach ($dropdowns as $dropdown): ?>
                                <?php if ($dropdown->type == 'Color 4'): ?>
                                    <option value="<?= $dropdown->id ?>"><?= h($dropdown->name); ?></option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>

                    </td>
                    <td><?= $this->Form->button(__('Delete'), ['class' => 'btn btn-danger btn-delete btn-block waves-effect waves-light', 'data-type' => 'Color 4']); ?></td>
                </tr>

                <tr>
                    <td><h5>Configurations</h5></td>
                    <td>

                        <select id="conf" class="form-control">

                            <?php foreach ($dropdowns as $dropdown): ?>
                                <?php if ($dropdown->type == 'Door Configuration'): ?>
                                    <option value="<?= $dropdown->id ?>"><?= h($dropdown->name); ?></option>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </select>

                    </td>
                    <td><?= $this->Form->button(__('Delete'), ['class' => 'btn btn-danger btn-delete btn-block waves-effect waves-light', 'data-type' => 'Door Configuration']); ?></td>
                </tr>


            </table>

            <hr>


            <table class="table table-hover drop-downs-table">

                <?= $this->Form->create($dropdown, ['class' => 'form-horizontal']) ?>
                <tr>
                    <td><h5>Standard</h5></td>


                    <td>


                        <?= $this->Form->hidden('type', ['value' => 'Standard Color']) ?>
                        <?= $this->Form->input('name', ['class' => 'form-control', 'label' => false, 'value' => '']) ?>


                    </td>

                    <td>
                        <?= $this->Form->button(__('Add'), ['class' => 'btn btn-success btn-block waves-effect waves-light']); ?>
                    </td>

                </tr>

                <?= $this->Form->end() ?>


                <?= $this->Form->create($dropdown, ['class' => 'form-horizontal']) ?>
                <tr>
                    <td><h5>Color 1</h5></td>


                    <td>


                        <?= $this->Form->hidden('type', ['value' => 'Color 1']) ?>
                        <?= $this->Form->input('name', ['class' => 'form-control', 'label' => false, 'value' => '']) ?>


                    </td>

                    <td>
                        <?= $this->Form->button(__('Add'), ['class' => 'btn btn-success btn-block waves-effect waves-light']); ?>
                    </td>

                </tr>

                <?= $this->Form->end() ?>
                <?= $this->Form->create($dropdown, ['class' => 'form-horizontal']) ?>

                <tr>
                    <td><h5>Color 2</h5></td>


                    <td>


                        <?= $this->Form->hidden('type', ['value' => 'Color 2']) ?>
                        <?= $this->Form->input('name', ['class' => 'form-control', 'label' => false, 'value' => '']) ?>


                    </td>

                    <td>
                        <?= $this->Form->button(__('Add'), ['class' => 'btn btn-success btn-block waves-effect waves-light']); ?>
                    </td>

                </tr>

                <?= $this->Form->end() ?>
                <?= $this->Form->create($dropdown, ['class' => 'form-horizontal']) ?>

                <tr>
                    <td><h5>Color 3</h5></td>


                    <td>


                        <?= $this->Form->hidden('type', ['value' => 'Color 3']) ?>
                        <?= $this->Form->input('name', ['class' => 'form-control', 'label' => false, 'value' => '']) ?>


                    </td>

                    <td>
                        <?= $this->Form->button(__('Add'), ['class' => 'btn btn-success btn-block waves-effect waves-light']); ?>
                    </td>

                </tr>

                <?= $this->Form->end() ?>
                <?= $this->Form->create($dropdown, ['class' => 'form-horizontal']) ?>

                <tr>
                    <td><h5>Color 4</h5></td>


                    <td>


                        <?= $this->Form->hidden('type', ['value' => 'Color 4']) ?>
                        <?= $this->Form->input('name', ['class' => 'form-control', 'label' => false, 'value' => '']) ?>


                    </td>

                    <td>
                        <?= $this->Form->button(__('Add'), ['class' => 'btn btn-success btn-block waves-effect waves-light']); ?>
                    </td>

                </tr>

                <?= $this->Form->end() ?>
                <?= $this->Form->create($dropdown, ['class' => 'form-horizontal']) ?>

                <tr>
                    <td><h5>Configurations</h5></td>


                    <td>


                        <?= $this->Form->hidden('type', ['value' => 'Door Configuration']) ?>
                        <?= $this->Form->input('name', ['class' => 'form-control', 'label' => false, 'value' => '']) ?>


                    </td>

                    <td>
                        <?= $this->Form->button(__('Add'), ['class' => 'btn btn-success btn-block waves-effect waves-light']); ?>
                    </td>

                </tr>

                <?= $this->Form->end() ?>
            </table>



        </div>


    </div>
</div>

<?= $this->Html->script('dropdown.js', ['block' => 'script']); ?>