# flutter_shop_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## MaterialPageRoutes (or on the fly routes) vs named routes

MaterialPageRoutes , where we just push the page to the context , if the application gets bigger and bigger t=it can be difficult to understand which screens are avaialaible where, alos passing of data to components that dont need them
Named routes are better and much easier to understand 

Instead of getting orute information from the constructor its better we will use a named route 

## why state management ? 

when we want to pass data normally , we use the common denominator , that is the main.dart file  , we willnow end up oassing and forwardin g==gdata to widgets taht don't need it becasue if some childWidget 

it is cumbersome to use main.dart as state management, the whole app / widget tree gets rebuilt 

data and the user interface that reflects that data - state

App wide state vs local state 

Provider pattern is very common 


## inheritance (extends) vs mixins (with)

with is a form of composition

inheritance - very strong logical dependency between the two classes

## Change Notifier

if you are not reusing the context, you can use Changenotifier.value
its better to use ChnqgeNotifer.value if you are doing somthing that is part of a list or a grid widgets are recycled by flutter but the data attached to the widget changes , using ChangeNotifier.value , you are making sure that the provider works even if you change data for a widget 
if you had a builder function it will not work correctly noew the provider is tied to the data and is attached and detached to the widget 

[ChangeNotifer vs ChangeNotifierprovider.value](https://stackoverflow.com/questions/57335980/changenotifierprovider-vs-changenotifierprovider-value)


