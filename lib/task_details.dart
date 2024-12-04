import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  final Map<String, dynamic> task;

  const TaskDetails({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de la tâche'),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task['title'] ?? '',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildDetailSection(context, 'Description:', task['description'] ?? ''),
            const SizedBox(height: 16),
            _buildDetailSection(
              context, 
              'Date de début:', 
              task['startDate']?.toString().split('T')[0] ?? 'Non définie'
            ),
            const SizedBox(height: 16),
            _buildDetailSection(
              context, 
              'Date de fin:', 
              task['endDate']?.toString().split('T')[0] ?? 'Non définie'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailSection(BuildContext context, String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          content,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
