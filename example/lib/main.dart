import 'package:animated_loading_border/animated_loading_border.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'bloc/giphy_bloc.dart';
import 'utils/constants.dart';
import 'utils/giphy_repository.dart';
import 'utils/trending_gifs.dart';

void main() => runApp(
      const _MyApp(
        title: kAnimatedLoadingBorder,
      ),
    );

class _MyApp extends StatelessWidget {
  const _MyApp({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _GifsListPage(
        giphyBloc: GiphyBloc(
          giphyRepository: GiphyRepository(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// Gifs Listing Page
class _GifsListPage extends StatefulWidget {
  const _GifsListPage({
    required this.giphyBloc,
    Key? key,
  }) : super(key: key);

  final GiphyBloc giphyBloc;

  @override
  State<_GifsListPage> createState() => _GifsListPageState();
}

class _GifsListPageState extends State<_GifsListPage> {
  @override
  void initState() {
    super.initState();
    // To Get Trending Gifs from GIPHY
    widget.giphyBloc.add(GiphyGetTrendingGifsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          kTrendingGifs,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: BlocBuilder<GiphyBloc, GiphyState>(
          bloc: widget.giphyBloc,
          builder: (context, state) {
            switch (state.runtimeType) {
              case GiphyLoadingState:
                return const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                  ),
                );

              case GiphyFailureState:
                var giphyFailureState = state as GiphyFailureState;
                return Center(
                  child: Text(
                    giphyFailureState.error ?? kError,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                );

              case GiphyTrendingGifsSuccessState:
                var giphyTrendingGifsSuccessState =
                    state as GiphyTrendingGifsSuccessState;
                var gifsData =
                    giphyTrendingGifsSuccessState.trendingGifs.data ?? [];

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: MasonryGridView.count(
                    padding: const EdgeInsets.only(top: 24.0),
                    crossAxisCount: 3,
                    mainAxisSpacing: 3.0,
                    crossAxisSpacing: 3.0,
                    itemCount: gifsData.length,
                    itemBuilder: (context, index) {
                      var gifData = gifsData[index];
                      return _GifsListTile(
                        gifData: gifData,
                        index: index,
                        extent: (index % 2 + 1) * 100,
                      );
                    },
                  ),
                );

              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}

/// Gifs Listing List Item
class _GifsListTile extends StatefulWidget {
  const _GifsListTile({
    required this.gifData,
    required this.index,
    required this.extent,
    Key? key,
  }) : super(key: key);

  final Data gifData;
  final int index;
  final double extent;

  @override
  State<_GifsListTile> createState() => _GifsListTileState();
}

class _GifsListTileState extends State<_GifsListTile> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: widget.gifData.images?.original?.url ?? kGreyBox,
      width: widget.extent,
      height: widget.extent,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      placeholder: (context, url) => AnimatedLoadingBorder(
        cornerRadius: 8.0,
        borderWidth: 1.5,
        child: Container(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
