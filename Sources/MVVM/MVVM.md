# Model View ViewModel

### What is MVVM?
MVVM is a design pattern we use to separate layers from each other and manage relationships between these layers. MVVM consists of three basic structures: Model, View, and ViewModel.

- Model : They are classes or structures that we create to represent data pulled from web services, databases, or different data sources.
- View : These are the classes that contain the codes of the interfaces that the user interacts with. Logic operations are not performed in these classes. The purpose of these classes is to Observe the data we want from the ViewModel.
- ViewModel : Classes that provide communication between View and Models. Logic operations are performed in these classes. A request is made from the View and certain logic and data sources are provided in the ViewModel. The results of the changes related to the data we created in this layer are Observed in the View.

<img src="https://github.com/omercankoc/mvvm-architecture-swiftui/blob/master/Images/mvvmswiftui.png" style="width:100%">

### About
- MVVM
- SwiftUI
- Listing
- Navigation View
- Search Bar
- Continuation
- Actors

<table class="image-table">
    <tbody>
        <tr>
            <td> <img src="https://github.com/omercankoc/mvvm-architecture-swiftui/blob/master/Images/countries.png" stye="width:30%"> </td>
            <td> <img src="https://github.com/omercankoc/mvvm-architecture-swiftui/blob/master/Images/searchable.png" stye="width:30%"> </td>
            <td> <img src="https://github.com/omercankoc/mvvm-architecture-swiftui/blob/master/Images/country.png" stye="width:30%"> </td>
        </tr>
    </tbody>
</table>
