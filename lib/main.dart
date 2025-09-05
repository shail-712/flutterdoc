import 'package:flutter/material.dart';
import 'text.dart';
import 'row.dart';
import 'column.dart';
import 'container.dart';
import 'image.dart';
import 'icon.dart';
import 'scaffold_appbar_material-app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tools Documentation',
      home: const CategoryMenu(),
    );
  }
}

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // Main categories + their widget items
    final Map<String, List<String>> categories = {
      'Basic Widgets': [
        'Text',
        'Row',
        'Column',
        'Container',
        'Image',
        'Icon',
        'ElevatedButton',
        'TextButton',
        'OutlinedButton',
        'Scaffold + AppBar +  Material App',
        'Center',
        'Padding',
        'SizedBox',
        'Align',
        'Expanded',
        'Flexible',
      ],
      'Layout Widgets': [
        'Stack',
        'Wrap',
        'GridView',
        'ListView',
        'SingleChildScrollView',
        'Table',
        'CustomScrollView',
        'Expanded',
        'FractionallySizedBox',
      ],
      'Styling & Theming Widgets': [
        'Theme',
        'Card',
        'Divider',
        'ClipRRect',
        'Opacity',
        'DecoratedBox',
        'Transform',
        'ShaderMask',
      ],
      'Buttons': [
        'ElevatedButton',
        'TextButton',
        'OutlinedButton',
        'IconButton',
        'FloatingActionButton',
      ],
      'Media & Assets': [
        'Image.asset',
        'Image.network',
        'FadeInImage',
        'VideoPlayer',
        'Icon',
        'SvgPicture',
      ],
      'Testing & Debugging Widgets': [
        'Placeholder',
        'SizedBox',
        'FlutterLogo',
        'Banner',
        'DebugBanner',
      ],
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Tools Documentation')),
      body: ListView(
        children: categories.entries.map((entry) {
          return ListTile(
            title: Text(entry.key),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      WidgetListScreen(title: entry.key, items: entry.value),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

// A map of widget name → example screen
final Map<String, Widget> widgetExamples = {
  'Text': const TextExampleScreen(),
  'Row': const RowExampleScreen(),
  'Column': const ColumnExampleScreen(),
  'Container': const ContainerExampleScreen(),
  'Image': const NetworkImageExample(),
  'Icon': const SimpleIconExample(),
  'Scaffold + AppBar +  Material App': const ScaffoldAppbarMaterialapp(),
};

class WidgetListScreen extends StatelessWidget {
  final String title;
  final List<String> items;

  const WidgetListScreen({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              // look up the selected widget in our map and open it if found
              final exampleScreen = widgetExamples[items[index]];
              if (exampleScreen != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => exampleScreen),
                );
              }
            },
          );
        },
      ),
    );
  }
}
