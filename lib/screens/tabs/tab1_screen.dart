import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StepStride • Pedometer'), actions: [IconButton(icon: const Icon(Icons.directions_walk, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [AppTheme.card, AppTheme.surface]), borderRadius: BorderRadius.circular(24), border: Border.all(color: AppTheme.primary.withValues(alpha: 0.3))),
            child: Column(children: const [
              Icon(Icons.directions_walk, size: 48, color: AppTheme.primary),
              SizedBox(height: 8),
              Text('8,420', style: TextStyle(fontSize: 52, fontWeight: FontWeight.w900)),
              Text('Steps Today / 10,000 Target', style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
            ]),
          ),
          const SizedBox(height: 16),
          Row(children: [
            Expanded(child: _tile('Distance', '6.2 km', Icons.map)),
            const SizedBox(width: 12),
            Expanded(child: _tile('Calories', '412 kcal', Icons.local_fire_department)),
            const SizedBox(width: 12),
            Expanded(child: _tile('Active Time', '1h 18m', Icons.timer)),
          ]),
        ],
      ),
    );
  }
  Widget _tile(String t, String v, IconData ic) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
      child: Column(children: [Icon(ic, color: AppTheme.primary), const SizedBox(height: 4), Text(v, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)), Text(t, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11))]),
    );
  }
}
