            <?php 
                function satuan($id_item_kpi) {
                    if(($id_item_kpi >= 9 && $id_item_kpi <= 13) || ($id_item_kpi >= 22 && $id_item_kpi <= 26)) {
                        return 0;
                    }else{
                        return 1;
                    }
                }
            ?>
            <div class="wrapper wrapper-content  animated fadeInRight">
                <div class="row">
                    <div class="col-md-12">                        
                        <div class="ibox ">
                            <div class="ibox-title">
                                <h5><?php echo $title.' Tahun '.$tahun ?></h5>
                            </div>
                            <div class="ibox-content">
                                <div class="row">
                                <div class="col-lg-12">
                                <div class="table-responsive">
                                <table id="mytable" class="table table-striped table-bordered table-hover" align="center">
                                    <thead>
                                        <tr>
                                            <td>No. </td>
                                            <td>Nama Item</td>
                                            <td>Indikator</td>
                                            <td>Nilai</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if($nilai_realisasi != NULL) foreach($nilai_realisasi as $key => $n) { ?>
                                        <tr>
                                            <td><?php echo $key+1; ?></td>
                                            <td><?php echo $n['nama_item']; ?></td>
                                            <td><?php echo $n['indikator']; ?></td>
                                            <td>
                                                <?php if(satuan($n['id_item_kpi']) == 0) { ?>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" value="<?php echo $n['nilai']; ?>" readonly>
                                                    <span class="input-group-addon">%</span>
                                                </div>
                                                <?php }else { ?>
                                                <div class="input-group">
                                                    <span class="input-group-addon">Rp.</span>
                                                    <input type="text" class="form-control" value="<?php echo $n['nilai']; ?>" readonly>
                                                </div>
                                                <?php } ?>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                                </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>