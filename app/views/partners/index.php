<?php require_once APPROOT.'/views/inc/header.php'; ?>
<?php
echo '<pre>';
print_r($data);
?>
<h1><?php echo $data['title'];?></h1>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">nr</th>
        <th scope="col">Nimi</th>
        <th scope="col">Registrikood</th>
        <th scope="col">e-post</th>
        <th scope="col">telefon</th>
        <th scope="col">tegevusala</th>
        <th scope="col">tegevusala t2psemalt</th>
        <th scope="col">asukoht</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Mark Otto</td>
        <td>1234</td>
        <td>mark@otto.com</td>
        <td>12345678</td>
        <td>seinad</td>
        <td>kipsseinad</td>
        <td>Eesti</td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Mark Otto</td>
        <td>1234</td>
        <td>mark@otto.com</td>
        <td>12345678</td>
        <td>seinad</td>
        <td>kipsseinad</td>
        <td>Eesti</td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td>Mark Otto</td>
        <td>1234</td>
        <td>mark@otto.com</td>
        <td>12345678</td>
        <td>seinad</td>
        <td>kipsseinad</td>
        <td>Eesti</td>
    </tr>
    <tr>
        <th scope="row">4</th>
        <td>Mark Otto</td>
        <td>1234</td>
        <td>mark@otto.com</td>
        <td>12345678</td>
        <td>seinad</td>
        <td>kipsseinad</td>
        <td>Eesti</td>
    </tr>
    </tbody>
</table>
<?php require_once APPROOT.'/views/inc/footer.php'; ?>
