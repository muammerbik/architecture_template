///App Radius
enum ProjectRadius {
  ///4
  xSmall(4),
  /// 8.
  small(8),

  /// 16.
  medium(16),

  /// 20.
  normal(20),

  /// 32.
  large(32);

  final double value;
  const ProjectRadius(this.value);
}