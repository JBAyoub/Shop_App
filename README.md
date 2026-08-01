# Shop App

A Flutter shopping application built to practice Flutter fundamentals, state management with Provider, widget composition, navigation, and responsive UI development.

## Features

- Browse a collection of products
- Filter products by brand
- View detailed product information
- Select product sizes
- Add products to a shopping cart
- Remove products from the cart
- Bottom navigation between Shop and Cart
- Material 3 UI with custom theme and typography

## Tech Stack

- Flutter
- Dart
- Provider (State Management)
- Material 3

## Flutter Concepts Demonstrated

### State Management

- Provider package
- MultiProvider
- ChangeNotifier
- ChangeNotifierProvider
- `context.watch()`
- `context.read()`
- `notifyListeners()`
- Shared application state
- Reactive UI updates

### Widget Architecture

- StatelessWidget
- StatefulWidget
- Widget composition
- Reusable custom widgets
- Separation of UI and business logic

### Navigation

- Navigator API
- Route-based navigation
- Passing data between screens through constructors
- Back navigation

### UI Development

- Material Design 3
- ThemeData customization
- ColorScheme
- Custom TextTheme
- Asset management
- Custom fonts
- Responsive layouts using:
  - Row
  - Column
  - Expanded
  - Padding
  - SafeArea
  - Container
  - SizedBox

### Lists & Scrolling

- ListView.builder
- Horizontal and vertical scrolling
- Dynamic widget generation
- IndexedStack for persistent tab state

### User Interaction

- GestureDetector
- Chip selection
- IconButton
- ElevatedButton
- TextField
- AlertDialog
- SnackBar

### Data Handling

- Constructor parameter passing
- Local widget state with `setState()`
- Collection filtering
- List manipulation
- Map-based model representation
- Immutable data copy using the spread operator

### Flutter Best Practices

- Feature-based folder organization
- Separation of Providers, Pages, and Widgets
- Reusable UI components
- Centralized application theme
- State-driven UI rendering

## Project Structure

```
lib/
├── Pages/
│   ├── shop_screen.dart
│   ├── product_details_page.dart
│   └── cart.dart
│
├── Providers/
│   ├── product_provider.dart
│   └── cart_provider.dart
│
├── Widgets/
│   ├── product_list.dart
│   └── shoe_container.dart
│
└── main.dart
```

## What This Project Demonstrates

This project demonstrates a solid understanding of Flutter's core development workflow, including widget composition, Provider-based state management, reactive UI updates, navigation, theming, reusable components, and clean separation between presentation and application state. It reflects the foundational concepts expected in production Flutter applications before introducing more advanced architectural patterns such as Riverpod, Bloc, Clean Architecture, or MVVM.
