<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-free-checkout" data-toggle="tooltip"
                        title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>"
                   class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-easypay"
                      class="form-horizontal">
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-merchant"><span data-toggle="tooltip"
                                                                                         title="<?php echo $merchant_comment; ?>"><?php echo $entry_merchant; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="easypay_merchant" value="<?php echo $easypay_merchant; ?>"
                                   id="input-merchant" class="form-control"/>
                            <?php if ($error_merchant) { ?>
                            <div class="text-danger"><?php echo $error_merchant; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-webkey"><span data-toggle="tooltip"
                                                                                       title="<?php echo $webkey_comment; ?>"><?php echo $entry_webkey; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="easypay_webkey" value="<?php echo $easypay_webkey; ?>"
                                   id="input-webkey" class="form-control"/>
                            <?php if ($error_webkey) { ?>
                            <div class="text-danger"><?php echo $error_webkey; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-expires"><span data-toggle="tooltip"
                                                                                        title="<?php echo $expires_comment; ?>"><?php echo $entry_expires; ?></span></label>
                        <div class="col-sm-10">
                            <input type="text" name="easypay_expires" value="<?php echo $easypay_expires; ?>"
                                   id="input-expires" class="form-control"/>
                            <?php if ($error_expires) { ?>
                            <div class="text-danger"><?php echo $error_expires; ?></div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-debug"><span data-toggle="tooltip"
                                                                                      title="<?php echo $debug_comment; ?>"><?php echo $entry_debug; ?></label>
                        <div class="col-sm-10">
                            <select name="easypay_debug" id="input-debug" class="form-control">
                                <?php if ($easypay_debug) { ?>
                                <option value="1" selected="selected">1</option>
                                <option value="0">0</option>
                                <?php } else { ?>
                                <option value="1">1</option>
                                <option value="0" selected="selected">0</option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                        <div class="col-sm-10">
                            <select name="easypay_status" id="input-status" class="form-control">
                                <?php if ($easypay_status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-pending"><?php echo $entry_order_status_id; ?></label>
                        <div class="col-sm-10">
                            <select name="easypay_order_status_id" id="input-pending" class="form-control">
                                <?php foreach ($order_statuses as $order_status) { ?>
                                <?php if ($order_status['order_status_id'] == $easypay_order_status_id) { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"
                                        selected="selected"><?php echo $order_status['name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-processing"><?php echo $entry_processing_status_id; ?></label>
                        <div class="col-sm-10">
                            <select name="easypay_processing_status_id" id="input-processing" class="form-control">
                                <?php foreach ($order_statuses as $order_status) { ?>
                                <?php if ($order_status['order_status_id'] == $easypay_processing_status_id) { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"
                                        selected="selected"><?php echo $order_status['name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="input-canceled"><?php echo $entry_canceled_status_id; ?></label>
                        <div class="col-sm-10">
                            <select name="easypay_canceled_status_id" id="input-canceled" class="form-control">
                                <?php foreach ($order_statuses as $order_status) { ?>
                                <?php if ($order_status['order_status_id'] == $easypay_canceled_status_id) { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"
                                        selected="selected"><?php echo $order_status['name']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-sort"><?php echo $sort_order_label; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="easypay_sort_order" value="<?php echo $easypay_sort_order; ?>"
                                   id="input-sort" class="form-control"/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>