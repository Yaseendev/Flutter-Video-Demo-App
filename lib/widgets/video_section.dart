import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_demo/blocs/cubit/video_cubit.dart';
import 'package:video_demo/utils/constants.dart';
import 'package:video_player/video_player.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({super.key});

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  final VideoPlayerController _controller =
      VideoPlayerController.network(videoUrl);
  bool isPlaying = false;
  bool isMute = false;
  double? maxHeight;

  @override
  void initState() {
    isMute = _controller.value.volume == 0.0;
    super.initState();

    //Size(3840.0, 2160.0)
    _controller.initialize().then((_) {
      _controller.play();
    });
    _controller.addListener(() {
      if (isPlaying != _controller.value.isPlaying) {
        setState(() {
          isPlaying = _controller.value.isPlaying;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context).size);
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: LayoutBuilder(builder: (context, constraints) {
                if (maxHeight == null) {
                  final double h = (MediaQuery.of(context).size.height -
                          (constraints.maxHeight)) - kToolbarHeight;
                  print(h);
                  context.read<VideoCubit>().loadVideoBox(h);
                }
                return Stack(
                  children: [
                    VideoPlayer(_controller),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              _controller.value.isPlaying
                                  ? _controller.pause()
                                  : _controller.play();
                            },
                            icon: Icon(isPlaying
                                ? Icons.pause_rounded
                                : Icons.play_arrow),
                          ),
                          IconButton(
                            onPressed: () {
                              if (_controller.value.volume == 0.0) {
                                _controller.setVolume(1.0);
                                setState(() {
                                  isMute = false;
                                });
                              } else {
                                _controller.setVolume(0.0);
                                setState(() {
                                  isMute = true;
                                });
                              }
                            },
                            icon: isMute
                                ? Icon(
                                    Icons.volume_mute_rounded,
                                    color: Colors.grey,
                                  )
                                : Icon(Icons.volume_up_rounded),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            )
          : CircularProgressIndicator.adaptive(),
    );
  }
}
