# stateapp

 ## Getting Started
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
