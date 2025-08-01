import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/presentation/pages/analisis_gizi_scan.dart';
import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/data/datasources/nutrition_remote_service.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_color.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/ts_text_style.dart';

// 1. UBAH DEKLARASI KELAS MENJADI STATEFULWIDGET
class ScanMakanan extends StatefulWidget {
  const ScanMakanan({super.key});

  @override
  State<ScanMakanan> createState() => _ScanMakananState();
}

// 2. BUAT CLASS STATE YANG SESUAI
class _ScanMakananState extends State<ScanMakanan> {
  // 3. PINDAHKAN LOGIKA DAN VARIABEL YANG BERUBAH KE DALAM STATE
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  bool _isLoading = false;

  // Fungsi ini dipindahkan ke dalam State
  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) {
      throw Exception("Tidak ada kamera yang tersedia");
    }

    // Inisialisasi controller dan simpan future-nya
    final controller = CameraController(cameras[0], ResolutionPreset.medium);
    _controller = controller;
    _initializeControllerFuture = controller.initialize();

    // Panggil setState jika widget masih ada di tree untuk me-rebuild UI
    if (mounted) {
      setState(() {});
    }
  }

  // 4. GUNAKAN LIFECYCLE METHOD: initState & dispose
  @override
  void initState() {
    super.initState();
    // Panggil inisialisasi kamera HANYA SEKALI saat widget dibuat
    _initializeCamera();
  }

  @override
  void dispose() {
    // WAJIB: Hancurkan controller saat widget dibuang untuk melepas resource kamera
    _controller?.dispose();
    super.dispose();
  }

  // 5. PINDAHKAN METHOD BUILD KE DALAM STATE
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dan UI lainnya tetap SAMA PERSIS
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              decoration: BoxDecoration(
                color: TSColor.additionalColor.red,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                color: TSColor.monochrome.white,
                size: 20,
              ),
            ),
          ),
        ),
        title: const Text("Scan Makanan"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      // 6. UBAH FUTUREBUILDER UNTUK MENGGUNAKAN VARIABEL STATE
      body: Stack(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture, // Gunakan future dari state
            builder: (context, snapshot) {
              // Gunakan controller dari state, pastikan tidak null
              final controller = _controller;

              if (snapshot.connectionState == ConnectionState.done &&
                  controller != null) {
                // UI setelah kamera siap (SAMA PERSIS SEPERTI SEBELUMNYA)
                return Column(
                  children: [
                    const Spacer(flex: 1),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.width * 0.85,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Transform.scale(
                          scale: 3 / controller.value.aspectRatio,
                          child: Center(
                            child: CameraPreview(controller),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Tata cara scan",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          SizedBox(height: 4),
                          Text("Foto dari atas makanan",
                              style: TextStyle(color: Colors.black54)),
                          Text("Foto hanya untuk 1 porsi makan",
                              style: TextStyle(color: Colors.black54)),
                        ],
                      ),
                    ),
                    const Spacer(flex: 2),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(Icons.photo_library_outlined,
                                color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: () async {
                              if (_isLoading ||
                                  _controller == null ||
                                  !_controller!.value.isInitialized) {
                                return;
                              }

                              try {
                                setState(() {
                                  _isLoading =
                                      true; // Tampilkan loading indicator
                                });

                                // 1. Ambil gambar
                                final picture =
                                    await _controller!.takePicture();

                                // 2. Panggil API service
                                final apiService = NutritionApiService();
                                final Map<String, dynamic> apiResponse =
                                    await apiService
                                        .getNutritionData(picture.path);

                                // 3. Navigasi ke halaman hasil jika masih di-mount
                                if (mounted) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AnalisisGiziScan(
                                        imagePath: picture.path,
                                        apiResponse:
                                            apiResponse, // Kirim response API
                                      ),
                                    ),
                                  );
                                }
                              } catch (e) {
                                // Tampilkan pesan error jika ada masalah
                                if (mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text('Error: ${e.toString()}')),
                                  );
                                }
                              } finally {
                                // Selalu hentikan loading, baik berhasil maupun gagal
                                if (mounted) {
                                  setState(() {
                                    _isLoading = false;
                                  });
                                }
                              }
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.teal, width: 4),
                              ),
                              child: Center(
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  decoration: const BoxDecoration(
                                    color: Colors.teal,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.flash_on, size: 32),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              } else {
                // Tampilan saat loading
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
