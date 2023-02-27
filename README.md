# stateapp

 ###  HOME PAGE WIHT MODEL STOREONE - PRODUCTONE
```
class App extends StatelessWidget {
  const App({super.key});
## Step One
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      /// لما تبي تفهم كل شي من بداية حاول تشوف  -->> home: HomePageStepOne
      home: HomePageStepOne(),
    );
  }
}
```
## Step Two
### HOME PAGE WIHT MODEL STORETWO - PRODUCTTWO - REPOSITORY - CUBIT(BLOC) - STATE (INIT - LOADED - LOADING)
```
class App extends StatelessWidget {
  const App({super.key});
## Step One
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // المرحلة التانية 
      home: HomePageStepTwo(),
    );
  }
}
