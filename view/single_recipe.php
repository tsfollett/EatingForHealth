<?php include('header.php'); ?>

<?php $id = filter_input(INPUT_GET, 'rid', FILTER_VALIDATE_INT); ?>
<?php echo $id; ?>

<?php include('footer.php'); ?>