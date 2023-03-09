Turns any path into a dashed path.

# Preview

<img src="https://user-images.githubusercontent.com/57846029/224071734-bddbfaa0-49af-4b18-bfcf-fa40d46a8752.png"  width="400">

# Usage

Basic usage example corresponding to the above shown preview:

```dart
CustomPaint(
painter: DashedPathPainter(
    originalPath: Path()..lineTo(100, 0),
    pathColor: Colors.red,
    strokeWidth: 5.0,
    dashGapLength: 10.0,
    dashLength: 10.0,
),
size: const Size(100.0, 2.0),
),
const SizedBox(height: 50),
CustomPaint(
painter: DashedPathPainter(
    originalPath: Path()
    ..addOval(
        const Rect.fromLTWH(0, 0, 100, 100),
    ),
    pathColor: Colors.white,
),
size: const Size(100.0, 100.0),
),
const SizedBox(height: 50),
CustomPaint(
painter: DashedPathPainter(
    originalPath: Path()
    ..addRect(
        const Rect.fromLTWH(0, 0, 100, 100),
    ),
    pathColor: Colors.grey,
    strokeWidth: 2.0,
    dashLength: 25.0,
),
size: const Size(100.0, 100.0),
)
```
Have a look at the example folder for a complete usage example.

You can define the following properties:
| Property | Description |
| ----------- | ----------- |
| originalPath | The original path that should be converted to a dashed path. |
| pathColor | The path's color. |
| strokeWidth | The stroke width of the path. |
| dashGapLength | The gap length between the dashes.  |
| dashLength | The length of each dash. |
