Turns any path into a dashed path.

# Preview

TODO: Add example image

# Usage

Basic usage example:

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
```
Have a look at the example folder for more usage examples.

You can define the following properties:
| Property | Description |
| ----------- | ----------- |
| originalPath | The original path that should be converted to a dashed path. |
| pathColor | The path's color. |
| strokeWidth | The stroke width of the path. |
| dashGapLength | The gap length between the dashes.  |
| dashLength | The length of each dash. |
