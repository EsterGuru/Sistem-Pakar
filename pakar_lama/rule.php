<?php
// Fungsi untuk mendapatkan aturan
function get_rules() {
    // Aturan-aturan berdasarkan contoh yang diberikan
    $rules = array(
        array(
            'conditions' => array('Pertumbuhan melambat', 'Tinggi badan di bawah ukuran normal', 'Berat badan balita cenderung turun'),
            'result' => 'Stunting'
        ),
        array(
            'conditions' => array('Pertumbuhan melambat', 'Mudah sakit', 'Wajah tampak lebih muda dari usianya'),
            'result' => 'Stunting'
        ),
        array(
            'conditions' => array('Tinggi badan anak di bawah ukuran normal', 'Balita tidak dapat menyusu dengan baik', 'Mudah terserang penyakit infeksi', 'Wajah tampak lebih muda dari usianya'),
            'result' => 'Stunting'
        ),
        array(
            'conditions' => array('Berat badan balita cenderung turun', 'Balita tidak dapat menyusu dengan baik', 'Pertumbuhan gigi terlambat', 'Menurunnya kemampuan kognitif (belum mampu mengucapkan kata di usia 2 tahun)'),
            'result' => 'Stunting'
        ),
        array(
            'conditions' => array('Mudah sakit', 'Sesak napas', 'Pertumbuhan gigi terlambat'),
            'result' => 'Stunting'
        ),
        array(
            'conditions' => array('Sesak napas', 'Tidak aktif bermain', 'Menurunnya kemampuan kognitif (belum mampu mengucapkan kata di usia 2 tahun)'),
            'result' => 'Stunting'
        ),
        array(
            'conditions' => array('Wajah tampak lebih muda dari usianya', 'Nafsu makan rendah', 'Memori belajar yang kurang baik'),
            'result' => 'Gizi Kurang'
        ),
        array(
            'conditions' => array('Sering sakit', 'Memerlukan waktu yang lama untuk pulih', 'Keletihan akut', 'Kulit dan rambut kering'),
            'result' => 'Gizi Kurang'
        ),
        array(
            'conditions' => array('Kelebihan berat badan', 'Obesitas', 'Badan gemuk'),
            'result' => 'Gizi Lebih'
        ),
    );

    return $rules;
}

$rules = get_rules();
?>
<body class="latar">
<div class="page-header">
    <h1 style="color: #fff;" align="center"><b>Aturan</b></h1>
</div>
<div class="table-responsive">
    <table class="table table-bordered table-hover" style="background-color: #fff;">
        <thead>
            <tr style="background-color: #1e272e; color: #fff;">
                <th>No</th>
                <th>Aturan</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($rules as $key => $rule) : ?>
                <tr>
                    <td><?= $key + 1 ?></td>
                    <td>
                        <span style="color: black; text-transform: uppercase;">JIKA </span><span style="color: blue;"><?= implode('</span><br /><span style="color: black; text-transform: uppercase;">DAN </span><span style="color: blue;">', $rule['conditions']) ?></span><br><br><br>
                        <span style="color: black; text-transform: uppercase;">MAKA </span><span style="color: red;"><?= $rule['result'] ?></span>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
