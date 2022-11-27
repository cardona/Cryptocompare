# Cryptocompare
In this project implements the architecture explained here.

An implementation of the MVVM + Clean architecture + Core Data, for fun. (Swift)

**This project is under active development
and is expected to change significantly before its first stable release.**

## Motivation
Having an example project, for reference, like snippets.

### Requirements
 - MVVM
 - Testability
 - Code Organization
 - Code Reusability
 - Core Data
 - Security
### Cons
 - Potentialy for boileplate code
 - Overkill for simple views and logic
 
## Patterns
This project uses different patterns for its implementation, in a classic clean architecture de Robert Martin.

Presentation for view layer (MVVM pattern is applied )
Domain for business logic layer
Data for data layer (Repos, CoreData, Local Files…)


### Coordinator 
Its responsibility is to show a new view, in this way we free the viewModel from managing the views and we also centralize them all by scenes.

### Boxing
Its responsibility is to bind the view Model properties to view, I like this technique, it is simple, clean and effective.

### MVVM
Presentation Pattern, the classic.

### Dependency injection.
To simplify testing implement dependency injection.

### Core Data
Use core data as data and image cache.
The app has offline mode, once you have seen the list of cryptos, you can access the app without an internet connection.
each image or crypto that is downloaded is saved in the database.

### AntiJailbreak & AntiDebugging
Try to prevent the app from running on a jailbreak device
Every time the app accesses sensitive data, it checks if it is being debugged.

### Keychain & Secure Enclave
It uses Secure enclave to encrypt the data and keychain to save it.

## APIs
For this project I have used token based API.

##### The Cryptocompare API
The API provides a rich data source for information, including:
- Currency Full Name
- Price
- Symbol
https://min-api.cryptocompare.com

Oscar ([@okardona](https://twitter.com/okardona))

