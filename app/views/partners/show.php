<?php require_once APPROOT.'/views/inc/header.php'; ?>
<h1>Detailne info</h1>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">nr</th>
        <th scope="col">Nimi</th>
        <th scope="col">Registrikood</th>
        <th scope="col">e-post</th>
        <th scope="col">telefon</th>
        <th scope="col">tegevusala</th>
        <th scope="col">asukoht</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row"><?php echo $data['partner']->id;?></th>
        <td><?php echo $data['partner']->name;?></td>
        <td><?php echo $data['partner']->reg_nr;?></td>
        <td><?php echo $data['partner']->email;?></td>
        <td><?php echo $data['partner']->phone;?></td>
        <td><?php echo $data['partner']->activity;?></td>
        <td><?php echo $data['partner']->location;?></td>
    </tr>
    </tbody>
</table>
<?php require_once APPROOT.'/views/inc/footer.php'; ?>
