<tr id="additional-m-row-<?= $i ?>">
    <?= $this->Form->hidden('additionalpermeters.' . $i . '.id'); ?>
    <td>
        <?= $this->Form->input('additionalpermeters.' . $i . '.additional_item_number', ['label' => false, 'class' => 'form-control product-item-no additional-per-meters']); ?>
    </td>

    <td>
        <?= $this->Form->input('additionalpermeters.' . $i . '.additional_per_meter', ['label' => false, 'class' => 'form-control additional-per-meters additional-meters']); ?>
    </td>

    <td>

        <?= $this->Form->input(
            'additionalpermeters.' . $i . '.additional_name',
            [
                'type' => 'select',
                'options' => $additional_per_meter,
                'empty' => true,
                'label' => false,
                'class' => 'form-control additional-per-meters additional-name'
            ]
        ); ?>

    </td>
    <td>

        <?= $this->Form->input('additionalpermeters.' . $i . '.additional_price',
            ['label' => false, 'class' => 'form-control additional-total-price span-input', 'readonly' => 'readonly']); ?>

    </td>

    <td>
        <button style="visibility: hidden;" type="button"
                class="delete-btn addtional-m-delete"><i class="typcn typcn-delete"></i>
        </button>
    </td>

</tr>