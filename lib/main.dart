import 'core/constants/constans.dart';
import 'core/providers_list.dart';
import 'features/favourites/presentation/screens/favourite_screen.dart';
import 'features/recipes/presentation/screens/recipes_list_screen.dart';
import 'library.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();

  /// local storage
  await Prefs.init();
  Prefs.setData(
      key: Constants.favoriteModelStorage,
      value: Prefs.getData(key: Constants.favoriteModelStorage) ?? "null");

  runApp(MultiProvider(
      providers: ProvidersList.providersList(), child: const Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static TextStyle optionStyle = GoogleFonts.dynaPuff();
  static const List<Widget> _widgetOptions = <Widget>[
    RecipesListScreen(),
    FavouriteScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: buildBottomNavigationBar(),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
      ],
      selectedLabelStyle: optionStyle,
      unselectedLabelStyle: optionStyle,
      selectedItemColor: Colors.white,
      currentIndex: _selectedIndex,
      backgroundColor: Constants.primaryColor,
      onTap: _onItemTapped,
    );
  }
}
