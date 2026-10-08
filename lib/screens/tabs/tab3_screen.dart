import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Challenges & Badges'), actions: [IconButton(icon: const Icon(Icons.military_tech, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final b in [
            {'title': '10k Daily Streak', 'desc': 'Completed 7 days in a row', 'icon': Icons.star},
            {'title': 'Weekend 25k Marathon', 'desc': 'Walked over 25,000 steps Saturday-Sunday', 'icon': Icons.emoji_events},
            {'title': 'Night Stride', 'desc': 'Logged 3,000 evening steps', 'icon': Icons.nightlight_round},
          ]) ...[
            Container(
              margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(backgroundColor: AppTheme.primary.withValues(alpha: 0.15), child: Icon(b['icon'] as IconData, color: AppTheme.primary)),
                title: Text(b['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                subtitle: Text(b['desc'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
