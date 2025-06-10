import 'package:flutter/material.dart';
import 'package:kozhi_admin/theme/dark_theme.dart';

class CustomSearch extends StatefulWidget {
  final Function(String?) onSearch;
  final Color fillColor;
  final TextStyle? textStyle;
  const CustomSearch({
    super.key,
    required this.onSearch,
    this.fillColor = cardFocusBorderColor,
    this.textStyle,
  });

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  final TextEditingController _searchController = TextEditingController();
  String _lastValue = '';

  @override
  void initState() {
    _searchController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
        child: TextFormField(
          controller: _searchController,
          style: widget.textStyle ?? Theme.of(context).textTheme.titleSmall,
          onFieldSubmitted: (value) {
            _lastValue = value.trim();
            widget.onSearch(_lastValue);
            setState(() {});
          },
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: widget.textStyle,
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            isCollapsed: true,
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: primaryColor),
            suffixIcon:
                _searchController.text.trim().isNotEmpty
                    ? IconButton(
                      icon: const Icon(Icons.clear, color: Colors.grey),
                      onPressed: () {
                        _lastValue = '';
                        _searchController.clear();
                        widget.onSearch(null);
                        setState(() {});
                      },
                    )
                    : null,
          ),
        ),
      ),
    );
  }
}
