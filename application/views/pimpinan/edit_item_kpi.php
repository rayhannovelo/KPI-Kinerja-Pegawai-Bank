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
                                <h5><?php echo $title; ?></h5>
                            </div>
                            <div class="ibox-content" style="background-color: white">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <?php foreach ($item_kpi as $value) { ?>
                                        <form class="m-t" role="form" action="<?php echo site_url('kpi/edit_item_kpi_form'); ?>" method="post">
                                        <div class="row form-horizontal">
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Nama Item KPI :</label>
                                                <div class="col-lg-9">
                                                    <input type="hidden" name="id_item_kpi" value="<?php echo $value['id_item_kpi']; ?>">
                                                    <input type="text" name="nama_item" class="form-control" value="<?php echo $value['nama_item']; ?>" required>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Indikator :</label>
                                                <div class="col-lg-9">
                                                    <textarea name="indikator" class="form-control" required><?php echo $value['indikator']; ?></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Bobot Item :</label>
                                                <div class="col-lg-9">
                                                    <div class="input-group">
                                                    <input type="number" name="bobot_item" class="form-control" value="<?php echo $value['bobot_item']; ?>" max="100" step="0.1" required><span class="input-group-addon">%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Target Item :</label>
                                                <div class="col-lg-9">
                                                    <?php if($value['satuan_target'] == 'persen') { ?>
                                                    <div class="input-group">
                                                    <input type="number" name="target_item" class="form-control" value="<?php echo $value['target_item']; ?>" required><span class="input-group-addon">%</span>
                                                    </div>
                                                    <?php }else { ?>
                                                    <div class="input-group">
                                                    <span class="input-group-addon">Rp.</span><input type="number" name="target_item" class="form-control" value="<?php echo $value['target_item']; ?>" required>
                                                    </div>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Satuan Target :</label>
                                                <div class="col-lg-9">
                                                    <select name="satuan_target" class="form-control">
                                                        <option value="persen" <?php echo $value['satuan_target'] == 'persen' ? 'selected' : ''; ?>>Persen (%)</option>
                                                        <option value="rupiah" <?php echo $value['satuan_target'] == 'rupiah' ? 'selected' : ''; ?>>Rupiah</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- <div class="form-group">
                                                <label class="col-lg-2 control-label">Tipe Scorecard :</label>
                                                <div class="col-lg-9">
                                                    <select name="satuan_target" class="form-control">
                                                        <option value="tipe_scorecard" <?php echo $value['tipe_scorecard'] == 'dalam' ? 'selected' : ''; ?>>Dalam</option>
                                                        <option value="luar" <?php echo $value['tipe_scorecard'] == 'luar' ? 'selected' : ''; ?>>Luar</option>
                                                    </select>
                                                </div>
                                            </div> -->
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label">Kategori 
                                                    <a type="button" data-container="body" data-toggle="popover" data-placement="top" data-html="true" data-content="
                                                    a. Kategori 1 : Realisasi diharapkan lebih tinggi dari target <br>
                                                    b. Kategori 2 : Realisasi diharapkan lebih kecil dari target <br>
                                                    c. Kategori 3 : Realisasi diharapkan berada dalam suatu target tertentu" data-original-title="" width="500px" title="" aria-describedby="popover534003"><i class="fa fa-question-circle"></i></a> :</label>
                                                <div class="col-lg-9">
                                                    <select name="kategori" class="form-control">
                                                        <option value="1" <?php echo $value['kategori'] == 1 ? 'selected' : ''; ?>>1</option>
                                                        <option value="2" <?php echo $value['kategori'] == 2 ? 'selected' : ''; ?>>2</option>
                                                        <option value="3" <?php echo $value['kategori'] == 3 ? 'selected' : ''; ?>>3</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="text-right">
                                            <button type="reset" class="btn btn-w-m btn-warning">Reset</button>
                                            <button class="btn btn-w-m btn-primary" type="submit">Simpan</button>
                                        </div>
                                        </form>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>