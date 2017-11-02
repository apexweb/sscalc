<div class="col-md-4 col-sm-12 mastercalculator-values">

    <table class="mcvalues-table table table-bordered grey">
        <tr>
            <th colspan="4">MASTER MARK UPS from Material Cost - Labour plus Overheads</th>
        </tr>
        <tr>
            <td></td>
            <td style="text-align:center;">Dist.</td>
            <td style="text-align:center;">Whsle.</td>
            <td style="text-align:center;">Retail.</td>

        </tr>
        <tr>
            <th>316 S/S, Perf Ali</th>
            <td><span class="secperf-dist"><?= h($mcvalues['secperf_dist']) ?></span>%</td>
            <td><span class="secperf-whsl"><?= h($mcvalues['secperf_whsl']) ?></span>%</td>
            <td><span class="secperf-re"><?= h($mcvalues['secperf_re']) ?></span>%</td>
        </tr>
        <tr>
            <th>D/Grille, Fibre</th>
            <td><span class="dgfibr-dist"><?= h($mcvalues['dgfibr_dist']) ?></span>%</td>
            <td><span class="dgfibr-whsl"><?= h($mcvalues['dgfibr_whsl']) ?></span>%</td>
            <td><span class="dgfibr-re"><?= h($mcvalues['dgfibr_re']) ?></span>%</td>

<!--            <td style="display:none;"><span id="mc-lo-list-4">0</span>%</td>-->
        </tr>

    </table>

    <table class="mcvalues-table table table-bordered grey">

        <tr>
            <th colspan="2">Hourly Rate</th>
            <th colspan="3">Contracted Times/Order &amp; Clean up</th>
            <th>Mark up %</th>
        </tr>
        <tr>
            <th>SD</th>
            <td>
                <span class="hrly-sd"><?= h($mcvalues['hrly_sd']) ?></span>
            </td>
            <td>90</td>
            <td>0</td>
            <td>
                <span class="cleanup-sd"><?= h($mcvalues['cleanup_sd']) ?></span>
            </td>
            <td>
                <span class="markup-sd"><?= h($mcvalues['markup_sd']) ?></span>
            </td>
        </tr>
        <tr>
            <th>SW</th>
            <td>
                <span class="hrly-sw"><?= h($mcvalues['hrly_sw']) ?></span>
            </td>
            <td>30</td>
            <td>0</td>
            <td>
                <span class="cleanup-sw"><?= h($mcvalues['cleanup_sw']) ?></span>
            </td>
            <td>
                <span class="markup-sw"><?= h($mcvalues['markup_sw']) ?></span>
            </td>
        </tr>
        <tr>
            <th>DGD</th>
            <td>
                <span class="hrly-dd"><?= h($mcvalues['hrly_dd']) ?></span>
            </td>
            <td></td>
            <td></td>
            <td>
                <span class="cleanup-dd"><?= h($mcvalues['cleanup_dd']) ?></span>
            </td>
            <td>
                <span class="markup-dd"><?= h($mcvalues['markup_dd']) ?></span>
            </td>
        </tr>
        <tr>
            <th>DGW</th>
            <td>
                <span class="hrly-dw"><?= h($mcvalues['hrly_dw']) ?></span>
            </td>
            <td></td>
            <td></td>
            <td>
                <span class="cleanup-dw"><?= h($mcvalues['cleanup_dw']) ?></span>
            </td>
            <td>
                <span class="markup-dw"><?= h($mcvalues['markup_dw']) ?></span>
            </td>
        </tr>
        <tr>
            <th>FD</th>
            <td>
                <span class="hrly-fd"><?= h($mcvalues['hrly_fd']) ?></span>
            </td>
            <td></td>
            <td></td>
            <td>
                <span class="cleanup-fd"><?= h($mcvalues['cleanup_fd']) ?></span>
            </td>
            <td>
                <span class="markup-fd"><?= h($mcvalues['markup_fd']) ?></span>
            </td>
        </tr>
        <tr>
            <th>FW</th>
            <td>
                <span class="hrly-fw"><?= h($mcvalues['hrly_fw']) ?></span>
            </td>
            <td></td>
            <td></td>
            <td>
                <span class="cleanup-fw"><?= h($mcvalues['cleanup_fw']) ?></span>
            </td>
            <td>
                <span class="markup-fw"><?= h($mcvalues['markup_fw']) ?></span>
            </td>
        </tr>
        <tr>
            <th>PD</th>
            <td>
                <span class="hrly-pd"><?= h($mcvalues['hrly_pd']) ?></span>
            </td>
            <td>90</td>
            <td>0</td>
            <td>
                <span class="cleanup-pd"><?= h($mcvalues['cleanup_pd']) ?></span>
            </td>
            <td>
                <span class="markup-pd"><?= h($mcvalues['markup_pd']) ?></span>
            </td>
        </tr>
        <tr>
            <th>PW</th>
            <td>
                <span class="hrly-pw"><?= h($mcvalues['hrly_pw']) ?></span>
            </td>
            <td>30</td>
            <td>0</td>
            <td>
                <span class="cleanup-pw"><?= h($mcvalues['cleanup_pw']) ?></span>
            </td>
            <td>
                <span class="markup-pw"><?= h($mcvalues['markup_pw']) ?></span>
            </td>
        </tr>

    </table>

    <table class="table table-no-border">


        <tr style="background:#99ccff;">
            <td rowspan="5" style="vertical-align: middle;">Powder Coating</td>
            <td>Std</td>
            <td class="std"><?= h($mcvalues['std']) ?></td>
        </tr>
        <tr style="background:#99ccff;">
            <td>Spec 1</td>
            <td class="spec1"><?= h($mcvalues['spec1']) ?></td>
        </tr>
        <tr style="background:#99ccff;">
            <td>Spec 2</td>
            <td class="spec2"><?= h($mcvalues['spec2']) ?></td>
        </tr>
        <tr style="background:#99ccff;">
            <td>Spec 3</td>
            <td class="spec3"><?= h($mcvalues['spec3']) ?></td>
        </tr>
        <tr style="background:#99ccff;">
            <td>Spec 4</td>
            <td class="spec4"><?= h($mcvalues['spec4']) ?></td>
        </tr>

        <tr style="background:#33cccc;">
            <td rowspan="3" style="vertical-align: middle;">Locks</td>
            <td><?= $mc_parts['53']['title'] ?></td>
            <td class="mc-list-20"><?= $mc_parts['53']['price'] ?></td>
        </tr>
        <tr style="background:#33cccc;">
            <td><?= $mc_parts['54']['title'] ?></td>
            <td class="mc-list-21"><?= $mc_parts['54']['price'] ?></td>
        </tr>
        <tr style="background:#33cccc;">
            <td><?= $mc_parts['55']['title'] ?></td>
            <td class="mc-list-22"><?= $mc_parts['55']['price'] ?></td>
        </tr>


        <tr style="background: #D8E4BC;">
            <td colspan="2"><?= $mc_parts['34']['title'] ?></td>
            <td class="mc-list-1" colspan="2"><?= $mc_parts['34']['price'] ?></td>
        </tr>
        <tr style="background: #D8E4BC;">
            <td colspan="2"><?= $mc_parts['35']['title'] ?></td>
            <td class="mc-list-2" colspan="2"><?= $mc_parts['35']['price'] ?></td>
        </tr>
        <tr style="background: #D9D9D9;">
            <td colspan="2"><?= $mc_parts['36']['title'] ?></td>
            <td class="mc-list-3" colspan="2"><?= $mc_parts['36']['price'] ?></td>
        </tr>
        <tr style="background: #FFCC99;">
            <td colspan="2"><?= $mc_parts['37']['title'] ?></td>
            <td class="mc-list-4" colspan="2"><?= $mc_parts['37']['price'] ?></td>
        </tr>
        <tr style="background: #F2DCDB;">
            <td colspan="2"><?= $mc_parts['38']['title'] ?></td>
            <td class="mc-list-5" colspan="2"><?= $mc_parts['38']['price'] ?></td>
        </tr>
        <tr style="background: #FFFFCC;">
            <td colspan="2"><?= $mc_parts['39']['title'] ?></td>
            <td class="mc-list-6" colspan="2"><?= $mc_parts['39']['price'] ?></td>
        </tr>
        <tr style="background: #E4DFEC;">
            <td colspan="2"><?= $mc_parts['40']['title'] ?></td>
            <td class="mc-list-7" colspan="2"><?= $mc_parts['40']['price'] ?></td>
        </tr>
        <tr style="background: #E4DFEC;">
                <td colspan="2"><?= $mc_parts['41']['title'] ?></td>
            <td class="mc-list-8"
                colspan="2"><?= $mc_parts['41']['price'] ?></td>
        </tr>
        <tr style="background: #DDD9C4;">
            <td colspan="2"><?= $mc_parts['42']['title'] ?></td>
            <td class="mc-list-9" colspan="2"><?= $mc_parts['42']['price'] ?></td>
        </tr>
        <tr style="background: #DAEEF3;">
            <td colspan="2"><?= $mc_parts['43']['title'] ?></td>
            <td class="mc-list-10" colspan="2"><?= $mc_parts['43']['price'] ?></td>
        </tr>
        <tr style="background: #DAEEF3;">
            <td colspan="2"><?= $mc_parts['44']['title'] ?></td>
            <td class="mc-list-11"
                colspan="2"><?= $mc_parts['44']['price'] ?></td>
        </tr>
        <tr style="background: #CCC0DA;">
            <td colspan="2"><?= $mc_parts['45']['title'] ?></td>
            <td class="mc-list-12"
                colspan="2"><?= $mc_parts['45']['price'] ?></td>
        </tr>
        <tr style="background: #DAEEF3;">
            <td colspan="2"><?= $mc_parts['46']['title'] ?></td>
            <td class="mc-list-13" colspan="2"><?= $mc_parts['46']['price'] ?></td>
        </tr>
        <tr style="background: #DAEEF3;">
            <td colspan="2"><?= $mc_parts['47']['title'] ?></td>
            <td class="mc-list-14" colspan="2"><?= $mc_parts['47']['price'] ?></td>
        </tr>
        <tr style="background: #FFFF99;">
            <td colspan="2"><?= $mc_parts['48']['title'] ?></td>
            <td class="mc-list-15" colspan="2"><?= $mc_parts['48']['price'] ?></td>
        </tr>
        <tr style="background: #D9D9D9;">
            <td colspan="2"><?= $mc_parts['49']['title'] ?></td>
            <td class="mc-list-16"
                colspan="2"><?= $mc_parts['49']['price'] ?></td>
        </tr>
        <tr style="background: #DDD9C4;">
            <td colspan="2">Cross Brace</td>
            <td class="mc-list-23" colspan="2">1.50</td>
        </tr>
        <tr style="background: #CCFFCC;">
            <td colspan="2"><?= $mc_parts['50']['title'] ?></td>
            <td class="mc-list-17"
                colspan="2"><?= $mc_parts['50']['price'] ?></td>
        </tr>
        <tr style="background: #FF99CC;">
            <td colspan="2"><?= $mc_parts['51']['title'] ?></td>
            <td class="mc-list-18"
                colspan="2"><?= $mc_parts['51']['price'] ?></td>
        </tr>
        <tr style="background: #99CCFF;">
            <td colspan="2"><?= $mc_parts['52']['title'] ?></td>
            <td class="mc-list-19" colspan="2"><?= $mc_parts['52']['price'] ?></td>
        </tr>

    </table>

    <table class="mcvalues-table table table-bordered grey">
        <tr>
            <th colspan="2">Mesh Deductions</th>
        </tr>
        <tr>
            <th>Security Window Mesh</th>
            <td class="width-100"><span class="sec-win-mesh"><?= h($mcvalues['sec_win_mesh']); ?></span></td>
        </tr>
        <tr>
            <th>Security Door Mesh</th>
            <td><span class="sec-door-mesh"><?= h($mcvalues['sec_door_mesh']); ?></span></td>
        </tr>
        <tr>
            <th>D/Grille Window Mesh</th>
            <td><span class="dg-win-mesh"><?= h($mcvalues['dg_win_mesh']); ?></span></td>
        </tr>
        <tr>
            <th>D/Grille Door Mesh</th>
            <td><span class="dg-door-mesh"><?= h($mcvalues['dg_door_mesh']); ?></span></td>
        </tr>
        <tr>
            <th>Insect Window Mesh</th>
            <td><span class="fibr-win-mesh"><?= h($mcvalues['fibr_win_mesh']); ?></span></td>
        </tr>
        <tr>
            <th>Insect Door Mesh</th>
            <td><span class="fibr-door-mesh"><?= h($mcvalues['fibr_door_mesh']); ?></span></td>
        </tr>
        <tr>
            <th>Perf Win Mesh</th>
            <td><span class="perf-win-mesh"><?= h($mcvalues['perf_win_mesh']); ?></span></td>
        </tr>
        <tr>
            <th>Perf Door Mesh</th>
            <td><span class="perf-door-mesh"><?= h($mcvalues['perf_door_mesh']); ?></span></td>
        </tr>


    </table>
</div>