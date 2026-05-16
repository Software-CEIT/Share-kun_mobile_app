
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/features/friend/domain/entities/friend_entity.dart';
import 'package:share_kun/features/friend/presentation/cubit/friend_cubit.dart';
import 'package:share_kun/features/friend/presentation/widget/emty_widget.dart';
import 'package:share_kun/features/friend/presentation/widget/friend_card_widget.dart';

class FriendList extends StatelessWidget {
  final List<FriendEntity> friends;
  final String           searchQuery;

  const FriendList({super.key ,required this.friends, required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    if (friends.isEmpty) return EmptyState();

    final cubit = context.read<FriendCubit>();

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'My Friends (${friends.length})',
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF6B7280),
              ),
            ),
          ),
          ...friends.map(
            (f) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FriendCard(
                item:        f,
                avatarColor: cubit.avatarColorFor(f.name),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
