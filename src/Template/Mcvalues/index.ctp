<h1><small>Master Calculator Values</small></h1>

<div class="card-box">

    <?= $this->Form->create($mcvalue, ['class' => 'form-inline']) ?>
    <div class="row font-13">
        <div class="col-md-4">


            <table class="mcvalues-table table table-bordered small-padding">
                <tr class="grey">
                    <th colspan="2">Hourly Rate</th>
                    <th colspan="3">Contracted Times/Order&amp;Clean up</th>
                    <th>Mark up %</th>
                </tr>
                <tr>
                    <th class="grey">SD</th>
                    <td>
                        <?= $this->Form->input('hrly_sd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>90</td>
                    <td>0</td>
                    <td>
                        <?= $this->Form->input('cleanup_sd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>
                        <?= $this->Form->input('markup_sd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">SW</th>
                    <td>
                        <?= $this->Form->input('hrly_sw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>30</td>
                    <td>0</td>
                    <td>
                        <?= $this->Form->input('cleanup_sw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>
                        <?= $this->Form->input('markup_sw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">DGD</th>
                    <td>
                        <?= $this->Form->input('hrly_dd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                        <?= $this->Form->input('cleanup_dd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>
                        <?= $this->Form->input('markup_dd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">DGW</th>
                    <td>
                        <?= $this->Form->input('hrly_dw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                        <?= $this->Form->input('cleanup_dw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>
                        <?= $this->Form->input('markup_dw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">FD</th>
                    <td>
                        <?= $this->Form->input('hrly_fd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                        <?= $this->Form->input('cleanup_fd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>
                        <?= $this->Form->input('markup_fd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">FW</th>
                    <td>
                        <?= $this->Form->input('hrly_fw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                        <?= $this->Form->input('cleanup_fw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>
                        <?= $this->Form->input('markup_fw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">PD</th>
                    <td>
                        <?= $this->Form->input('hrly_pd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>90</td>
                    <td>0</td>
                    <td>
                        <?= $this->Form->input('cleanup_pd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>
                        <?= $this->Form->input('markup_pd', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">PW</th>
                    <td>
                        <?= $this->Form->input('hrly_pw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>30</td>
                    <td>0</td>
                    <td>
                        <?= $this->Form->input('cleanup_pw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                    <td>
                        <?= $this->Form->input('markup_pw', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-md-4">
            <table class="table mcvalues-table table-bordered small-padding">
                <tr class="grey">
                    <th colspan="4">MASTER MARK UPS from Material Cost - Labour plus Overheads</th>
                </tr>
                <tr class="grey">
                    <th></th>
                    <th>Dist.</th>
                    <th>Whsle.</th>
                    <th>Retail.</th>
                </tr>
                <tr>
                    <th class="grey">316 S/S, Perf Ali</th>
                    <td>
                        <?= $this->Form->input('secperf_dist', ['class' => 'form-control input-sm', 'label' => false]) ?>

                    </td>
                    <td>
                        <?= $this->Form->input('secperf_whsl', ['class' => 'form-control input-sm', 'label' => false]) ?>

                    </td>
                    <td>
                        <?= $this->Form->input('secperf_re', ['class' => 'form-control input-sm', 'label' => false]) ?>

                    </td>
                </tr>

                <tr>
                    <th class="grey">D/Grille, Fibre</th>
                    <td>
                        <?= $this->Form->input('dgfibr_dist', ['class' => 'form-control input-sm', 'label' => false]) ?>

                    </td>
                    <td>
                        <?= $this->Form->input('dgfibr_whsl', ['class' => 'form-control input-sm', 'label' => false]) ?>

                    </td>
                    <td>
                        <?= $this->Form->input('dgfibr_re', ['class' => 'form-control input-sm', 'label' => false]) ?>

                    </td>
                </tr>
            </table>
            <table class="mcvalues-table table table-bordered small-padding">
                <tr>
                    <th class="grey" rowspan="5">Powder Coating</th>
                    <th class="grey">Std</th>
                    <td>
                        <?= $this->Form->input('std', ['class' => 'form-control input-sm', 'label' => false, 'readonly' => 'readonly']) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">Spec 1</th>
                    <td>
                        <?= $this->Form->input('spec1', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">Spec 2</th>
                    <td>
                        <?= $this->Form->input('spec2', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">Spec 3</th>
                    <td>
                        <?= $this->Form->input('spec3', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
                <tr>
                    <th class="grey">Spec 4</th>
                    <td>
                        <?= $this->Form->input('spec4', ['class' => 'form-control input-sm', 'label' => false]) ?>
                    </td>
                </tr>
            </table>



        </div>

        <div class="col-md-4">
            <table class="mcvalues-table table table-bordered small-padding">
                <tr>
                    <th class="grey" colspan="2">Mesh Deductions</th>
                </tr>
                <tr>
                    <th class="grey">Security Window Mesh</th>
                    <td><?= $this->Form->input('sec_win_mesh', ['class' => 'form-control input-sm', 'label' => false]) ?></td>
                </tr>
                <tr>
                    <th class="grey">Security Door Mesh</th>
                    <td><?= $this->Form->input('sec_door_mesh', ['class' => 'form-control input-sm', 'label' => false]) ?></td>
                </tr>
                <tr>
                    <th class="grey">D/Grille Window Mesh</th>
                    <td><?= $this->Form->input('dg_win_mesh', ['class' => 'form-control input-sm', 'label' => false]) ?></td>
                </tr>
                <tr>
                    <th class="grey">D/Grille Door Mesh</th>
                    <td><?= $this->Form->input('dg_door_mesh', ['class' => 'form-control input-sm', 'label' => false]) ?></td>
                </tr>
                <tr>
                    <th class="grey">Insect Window Mesh</th>
                    <td><?= $this->Form->input('fibr_win_mesh', ['class' => 'form-control input-sm', 'label' => false]) ?></td>
                </tr>
                <tr>
                    <th class="grey">Insect Door Mesh</th>
                    <td><?= $this->Form->input('fibr_door_mesh', ['class' => 'form-control input-sm', 'label' => false]) ?></td>
                </tr>
                <tr>
                    <th class="grey">Perf Win Mesh</th>
                    <td><?= $this->Form->input('perf_win_mesh', ['class' => 'form-control input-sm', 'label' => false]) ?></td>
                </tr>
                <tr>
                    <th class="grey">Perf Door Mesh</th>
                    <td><?= $this->Form->input('perf_door_mesh', ['class' => 'form-control input-sm width-250', 'label' => false]) ?></td>
                </tr>


            </table>
        </div>
        <div class="col-xs-12">
            <?= $this->Form->Button('Update Calculator', ['class' => 'btn btn-success waves-effect']) ?>
        </div>


    </div><!-- .row -->
    <?= $this->Form->end(); ?>

</div>