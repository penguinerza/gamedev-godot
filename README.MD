# README

## Tutorial 2

### Playtest

1. Pesan yang ditampilkan pada log adalah "Platform initialized" dan "Reached objective!".
2. Pesan yang ditampilkan pada log ketika platform digerakkan dari bawah ke atas adalah "Reached objective!" saja.
3. ObjectiveArea memiliki kaitan dengan output yang ditampilkan. ObjectiveArea akan menuliskan output log ketika RigidBody scene BlueShip masuk ke dalam ObjectiveArea.

### Manipulasi Node dan Scene

1. Node Sprite berfungsi untuk memberikan "skin" pada scene. Tanpa Sprite, scene yang ditampilkan hanya transparan.
2. RigidBody2d -> node dapat digerakkan dengan external force, tetap memaintain bentuk dan ukuran. StaticBody2d -> node tidak dapat digerakkan dengan external force, tetap memaintain bentuk dan ukuran.
3. Tidak ada perubahan yang terjadi. Kecepatan pesawat jatuh sama meskipun diubah atau tidak.
4. Pesawat menembus platform.
5. Initial position dan rotation BlueShip berubah. Perubahan juga terjadi jika drag and drop objek BlueShip.
6. Position StonePlatform relatif terhadap parent. Node parent (PlatformBlue) ditransformasikan setelah itu Node child (StonePlatform) ditransformasikan relatif terhadap parent. Dapat dilihat StonePlatform2 digeser 70 pixel ke kanan.
