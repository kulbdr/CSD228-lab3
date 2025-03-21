import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(DigitalPictureFrameApp());
}

class DigitalPictureFrameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DigitalPictureFrame(),
    );
  }
}

class DigitalPictureFrame extends StatefulWidget {
  @override
  _DigitalPictureFrameState createState() => _DigitalPictureFrameState();
}

class _DigitalPictureFrameState extends State<DigitalPictureFrame> {
  final List<String> imageUrls = [
    "https://t4.ftcdn.net/jpg/03/10/24/63/360_F_310246341_869grfwR1b87MN3qyFPe6yZZIRC83X31.jpg"
    "data:image/jpeg;base64,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"
    "data:image/png;base64,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"
    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQ4AAACUCAMAAABV5TcGAAAAclBMVEX/AAD/////p6f/+fn//Pz/7+//5ub/0ND/Q0P/9vb/k5P/Kir/l5f/6+v/e3v/PDz/hob/NTX/ERH/2Nj/wMD/4eH/rq7/ysr/nJz/b2//YWH/goL/Gxv/xcX/UFD/tbX/aWn/WVn/jY3/SUn/IyP/dXWWgtR+AAAGp0lEQVR4nO2d6bqqIBiFwSGn0jI1d1lm2f3f4kkb1ERBpB7gsH7t08lFvjJ+DAIwRxrkTtqsG5onhUPhUDgUDoVD4VA4FA6FQ+F4SOHoSAocpsnKSQoctxsrJxlwOAA4jKxkwOED4DOykgDHwgPAW7DxkgCHX3kxyh7i49gGlVewZWImPo7Dw+zAxEx4HJb9MLMtFm6i4zDWL7e1wcBOdBw7++Vm7xjYCY7DcBs7l0H2EBzHLmjsAgbZQ2wc+rLtt9T/cxw7r+3nzc8eYuEwup0tZ9k1XHZHctvplYlYOJzredW6RyvsGoatvoexOl+nFx6xcBgpyDTzBcRxPx3dV/YwTC0Dqey5A1r3y07RM/i17Vs+C5MZne7/oOinCoZjVV/o76pioK/7luv6P3b1IBes5MfxaErK9J4NjijP4z3TpGX9pyc/DvPvee1J064oz6umnZ5//lEElAXDoafk9ilFr0wwHOgSgtaRwl40HIjWZEg08THRcMQbUvdN/B/gWP3hfR/6o2hYhMPxOUwZ1pJmKko0HDAidY9o3IXDsSN1pxrtC4dja+ONK9lUEy/C4VgQ1qV/VNOUwuHoj+rRcqkm9YXDARMy84TKXDwchE0LVcMiBA6n07+0iOrS7hxlTFpyBMBhRH67gxmfSbzPbYQrPyKMEwqAwyyA2wpdOBcS70srP5guKAhjHwLguA9is7R1d0Q/ueXtpBnx8JZ/HHq1gCNMmtyeh1hnEObvrxtJ9f0DWSyILxyoEu48vty0FDuCurQ1nf9siVCVaT85vnBsi83l+PEcX+HAd1MR7/HW+3dNaj0/Sbuu+tENin4J4gsHfAzf91rcPLn3118/3jngrQ+vzNBEz5osEWvn+pNlP33OcOTvOehgHS1MxzDy5vuvJ04Q8njdadx8lBuGYy6iy7uoeXk/fc5wLDoFITtrnVt/jsq0DOecPa0X7Q9d7dy5cI+IHnKGAyJm1hqFDx74uvRZky5G26A1InnecCTe2BV2/UDxdenjwcej2DzUII83HIti9JKiuk/9hnO+Va1TjLFCBUR4wwExt1pHdXycc7UkGxcnQm764A5HUo5eE/oxjPB1RwRjf7zzWiIDItzhWGHuNSx8kl6pX2C68jZyGoY7HJCgz8lCe2Ti/OHA9ypYKBtI/BdpDwj9i8zRppaVPHQAhD8cELmMhbWu6LQ5xEEYKp+ngUA7hzicX6Q9EEvmEAcknHacI3sgaR5x/KC0DE1K8Ygjx186V4hQB684tuNDLyZCxAW5xGFY6PWirHXVLFRsnS8c+tH9CYxKV3fXB8ITDv1IMjpjJ9uPPoHwhAMef9I/b+T1pvm5wqHvTvir2OnULy1c4fiMpH9Xe0R0kDMc0MAG/ljJR82A8oajmYT8slJk4vzhgLsfxH+ygVWnHOL4QQBoIPjDJw4I9wRLOOgVouOk/OKAly9mEO8ynC6nOIz8a/1TOx9ZNscpDgitL41ri9HdtdzigPHtCxVIeBvfA8UvDrhyx+cnKVS6mC1QHOOATs6YR5njVh/zjAMaW6YNTIk/wYJrHPceGcNo0JVg5THnOAiWtpDqRrLQlncczH7hTxP74i98L5SdJcKzPATAAeMA7zWugHTHtQg44OpvVo8sJN9wLQQOaC5n9EDKJflBHmLggEZCfBTBpzbJhBORBMEB4ZGSx2bSMR7C4IBrqvojRC21lgHHhQ7HSKxHaByUMzDDgUChcViUnY9g0mFqwuAg2i6K0qTSIgoOk3q2cj/l+DBRcET0/Y4pu/FFwYE6pmLjJ7Hx3CB1b0+NOD+goLny4WhvcArDrNwvj02crwCgeP/DOab7MgtbrTJqz5vgOOqd0iD0NsHpkGw/AjlJb2GksU0Op2Dj1bO94YSjPMTAoV/C4FSclxHyQfdxPLSI0r/iFIQu+eGDYuBYaJo13ECkQ8sTKpmWppEfAyQGjnG506rLMcmAY43eE0sjGXColxl1tJ86UBuWDDhOAJwYWcmAwx7enzJVMuC4D/0DRlYKR0cKR0cS4NDvw9jN/Fez1JIAh1nhYPTOUQlwrCocNOc8IyQBjmqJkMfmpYEy4LAqHExekicFjuoFTwxe61RLAhxRCUBJd1prTxLgyDMAsqF9whMlAY7q/JOM7mjjvpf4ONIQgHA4OjhJEuBwKxyMooMS4KgWfkxcxjEoCXDUC3GRh6JNlwQ4zpXXmY2XBDjqfUAFGy8JcLj+Xaoq/YYUjo4Ujo4Ujo4Ujo4Ujo4Ujo4Ujo4Ujo4Ujo4Ujo7m4fgHsQ9vTNVlw0IAAAAASUVORK5CYII="
  ];

  int currentIndex = 0;
  bool isPaused = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startImageRotation();
  }

  void startImageRotation() {
    _timer = Timer.periodic(Duration(seconds: 10), (timer) {
      if (!isPaused) {
        setState(() {
          currentIndex = (currentIndex + 1) % imageUrls.length;
        });
      }
    });
  }

  void togglePause() {
    setState(() {
      isPaused = !isPaused;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 10),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade700, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: imageUrls[currentIndex],
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) =>
                  Icon(Icons.error, size: 50, color: Colors.red),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: togglePause,
        child: Icon(isPaused ? Icons.play_arrow : Icons.pause),
      ),
    );
  }
}
