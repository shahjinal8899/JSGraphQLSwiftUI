# SwapiApp
A simple SwiftUI project which list out films and films details. 

# Description:
This application includes list of films, details of individual film. Application has search functionality to find film by its title.

You can see the list of films and search bar added in the main screen. Select any film and check the details of it.

# Architecture:
1. SwapiApp is implemented using Model-View-ViewModel (MVVM) architecture pattern.
2. Model is responsible for representing the data from our business logic. The Model doesn’t know any other layer.
3. View is responsible for handling all the layouts and displaying the data user-friendly. The View knows the ViewModel but doesn't know the model.
3. ViewModel is responsible for transforming the data received in a View representative way, receiving actions from the View, dealing with our business logic. The data binding tells whoever is listening about those changes. The ViewModel Knows the Model layer but doesn’t know the View layer.

# Structure:
1. "Model": This contains network and navigation related files.
2. "Views": This contains UI files to render in the application.
3. "Resources": Non-code files which are used by the project. These can include images, colors, fonts, videos etc..

# Dependencies:
Swift Package Manager is used as a dependency manager. 
- Package "Apollo": Apollo iOS executes queries and mutations using a GraphQL server and returns results as pre-generated and operation-specific Swift types. This means that Apollo iOS takes care of forming spec-compliant GraphQL requests, parsing JSON responses, and manually validating and type-casting response data for you.
