import 'package:flutter/material.dart';
import '../../controllers/home_controller.dart';
import '../../models/user_model.dart';
import 'member_detail_view.dart';

class MemberListView extends StatefulWidget {
  final HomeController controller;

  const MemberListView({super.key, required this.controller});

  @override
  State<MemberListView> createState() => _MemberListViewState();
}

class _MemberListViewState extends State<MemberListView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1628),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Header ──────────────────────────────────────────
            _buildHeader(context),

            // ── Member List ───────────────────────────────────────
            Expanded(child: _buildMemberList()),
          ],
        ),
      ),
    );
  }

  // ── Header ──────────────────────────────────────────────────────────
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: Row(
        children: [
          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Daftar Pengurus',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '${widget.controller.totalMembers} anggota aktif',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.45),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ── Member List ───────────────────────────────────────────────────────
  Widget _buildMemberList() {
    final members = widget.controller.members;

    if (members.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off_rounded,
              color: Colors.white.withOpacity(0.2),
              size: 48,
            ),
            const SizedBox(height: 12),
            Text(
              'Tidak ada anggota ditemukan',
              style: TextStyle(color: Colors.white.withOpacity(0.35)),
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      itemCount: members.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        final member = members[index];
        return _MemberCard(
          member: member,
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MemberDetailView(
                  member: member,
                  controller: widget.controller,
                ),
              ),
            );
            setState(() {});
          },
        );
      },
    );
  }
}

// ── Member Card Widget ────────────────────────────────────────────────
class _MemberCard extends StatelessWidget {
  final UserModel member;
  final VoidCallback onTap;

  const _MemberCard({required this.member, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.04),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.white.withOpacity(0.08)),
        ),
        child: Row(
          children: [
            // Avatar
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF1B9E5F).withOpacity(0.15),
                border: Border.all(
                  color: const Color(0xFF1B9E5F).withOpacity(0.3),
                  width: 1.5,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  member.imagePath,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Icon(
                    Icons.person_rounded,
                    color: const Color(0xFF4ECFA0),
                    size: 28,
                  ),
                ),
              ),
            ),

            const SizedBox(width: 14),

            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    member.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    member.position,
                    style: const TextStyle(
                      color: Color(0xFF4ECFA0),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    member.division,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),

            // Trailing
            Row(
              children: [
                if (member.isFavorite)
                  const Icon(
                    Icons.favorite_rounded,
                    color: Color(0xFFFF7F9E),
                    size: 16,
                  ),
                const SizedBox(width: 8),
                Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white.withOpacity(0.25),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
