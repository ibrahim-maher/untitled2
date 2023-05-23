import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController=TextEditingController();
  List<String> _searchResults=[];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchResults = [];
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    setState(() {
      // Perform search action based on the search query
      final searchQuery = _searchController.text;

      // Here, you can replace the code below with your actual search logic
      // In this example, we're just populating dummy search results

      _searchResults.clear();

      if (searchQuery.isNotEmpty) {
        for (int i = 1; i <= 10; i++) {
          _searchResults.add('Result $i for $searchQuery');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border:InputBorder.none,
                  prefixIcon:  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: _performSearch,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_searchResults[index]),

                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}