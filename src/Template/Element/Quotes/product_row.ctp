<tr id="product-options-row-<?php echo $i; ?>" class="product-options-row">
    <?= $this->Form->hidden('products.' . $i . '.id'); ?>
    <td>
        <?= $this->Form->input('products.' . $i . '.product_item_number',
            ['label' => false, 'class' => 'form-control product-item-no product-options']); ?>
    </td>

    <td>

        <?= $this->Form->select(
            'products.' . $i . '.product_qty',
            [1 => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
            ['empty' => ' ', 'label' => false,
                'class' => 'product-options form-control product-qty', 'data-style' => 'btn-primary']
        );
        ?>

    </td>
    <td>

        <?= $this->Form->select(
            'products.' . $i . '.product_sec_dig_perf_fibr',
            ['Security' => 'Security', 'D/Grille' => 'D/Grille', 'Fibre' => 'Fibre', 'Perf Ali' => 'Perf Ali'],
            ['empty' => ' ', 'label' => false,
                'class' => 'product-options form-control product-sec-dg-fibr',
                'data-style' => 'btn-primary',
                'data-prev' => ''
            ]
        );
        ?>

    </td>

    <td>

        <?= $this->Form->select(
            'products.' . $i . '.product_316_ss_gal_pet',
            ['316/SS' => '316/SS', 'Insect' => 'Insect', 'Pet' => 'Pet'],
            ['empty' => ' ', 'label' => false,
                'class' => 'product-options form-control product-ss-gal-pet', 'data-style' => 'btn-primary']
        );
        ?>

    </td>

    <td>

        <?= $this->Form->select(
            'products.' . $i . '.product_window_or_door',
            ['Window' => 'Window', 'Door' => 'Door'],
            ['empty' => ' ', 'label' => false,
                'class' => 'product-options form-control product-win-door', 'data-style' => 'btn-primary']
        );
        ?>

    </td>

    <td>

        <?= $this->Form->select(
            'products.' . $i . '.product_window_frame_type',
            ['9mm' => '9mm', '11mm' => '11mm'],
            ['empty' => ' ', 'label' => false, 'class' => 'form-control product-frame-type', 'data-style' => 'btn-primary']
        );
        ?>

    </td>

    <td>

        <?= $this->Form->select(
            'products.' . $i . '.product_configuration',
            $conf,
            ['empty' => ' ', 'label' => false, 'class' => 'form-control product-conf', 'data-style' => 'btn-primary']
        );
        ?>

    </td>

    <td>
        <?= $this->Form->input('products.' . $i . '.product_location_in_building', ['label' => false, 'class' => 'form-control']); ?>
    </td>

    <td>
        <?= $this->Form->input('products.' . $i . '.product_height',
            ['label' => false, 'class' => 'product-options form-control product-height']); ?>
    </td>

    <td>
        <?= $this->Form->input('products.' . $i . '.product_width',
            ['label' => false, 'class' => 'product-options form-control product-width']); ?>
    </td>

    <td>

        <?= $this->Form->select(
            'products.' . $i . '.product_number_of_locks',
            [1 => 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
            ['empty' => ' ', 'label' => false,
                'class' => 'product-options form-control product-lock-count', 'data-style' => 'btn-primary']
        );
        ?>

    </td>

    <td>

        <?= $this->Form->select(
            'products.' . $i . '.product_lock_type',
            ['Single' => 'Single', 'Trple Hngd' => 'Trple Hngd', 'Trple Sldng' => 'Trple Sldng'],
            ['empty' => ' ', 'label' => false,
                'class' => 'product-options product-lock-type form-control', 'data-style' => 'btn-primary']
        );
        ?>

    </td>
    <td>
        <?= $this->Form->input('products.' . $i . '.product_lock_handle_height',
            ['label' => false, 'class' => 'product-options form-control product-lock-height']); ?>
    </td>
    <td>
        <button style="visibility: hidden;" type="button"
                class="delete-btn product-delete"><i class="typcn typcn-delete"></i>
        </button>
    </td>
</tr>

<tr id="product-prices-row-<?php echo $i; ?>" class="product-prices-row">
    <td colspan="14">
        <div class="value-holder">
            <span class="product-mf-role"></span>

            <?= $this->Form->input('products.' . $i . '.product_cost',
                ['templates' => ['inputContainer' => '{{content}}'] ,
                    'class' => 'span-input product-price-incl-gst', 'readonly' => 'readonly', 'label' => false]); ?>

            <input class="price-incl-gst-not-emergency" type="hidden">
        </div>
        <div class="value-holder">Sell:
            <input class="span-input product-sell-price" readonly="readonly">
        </div>
        <div class="value-holder">Profit:
            <input class="span-input product-profit" readonly="readonly">
        </div>
        <div class="value-holder" style="float: right;">


            <button type="button"
                    class="copy-to-midrail-btn btn btn-white btn-custom btn-rounded waves-effect btn-small">
                Copy to Midrail
            </button>


            <?= $this->Form->input('products.' . $i . '.product_emergency_window',
                ['type' => 'checkbox',
                    'class' => 'product-emergency',
                    'templates' => [
                        'nestingLabel' => '{{hidden}}{{input}}<label{{attrs}}>{{text}}</label>',
                        'inputContainer' => '<div class="input inline-block {{type}}{{required}}">{{content}}</div>',]])
            ?>

        </div>
    </td>
</tr>
