# Model View ViewModel

### What is MVVM?
MVVM is a design pattern we use to separate layers from each other and manage relationships between these layers. MVVM consists of three basic structures: Model, View, and ViewModel.

- Model : They are classes or structures that we create to represent data pulled from web services, databases, or different data sources.
- View : These are the classes that contain the codes of the interfaces that the user interacts with. Logic operations are not performed in these classes. The purpose of these classes is to Observe the data we want from the ViewModel.
- ViewModel : Classes that provide communication between View and Models. Logic operations are performed in these classes. A request is made from the View and certain logic and data sources are provided in the ViewModel. The results of the changes related to the data we created in this layer are Observed in the View.

<img src="https://github.com/omercankoc/swift-handbook/blob/master/Images/mvvm.png" style="width:100%">

### Content
- [Model](https://github.com/omercankoc/swift-handbook/blob/master/Sources/MVVM/RickAndMorty/RickAndMorty/Model/CharactersModel.swift)
- [View](https://github.com/omercankoc/swift-handbook/tree/master/Sources/MVVM/RickAndMorty/RickAndMorty/View)
- - [List](https://github.com/omercankoc/swift-handbook/blob/master/Sources/MVVM/RickAndMorty/RickAndMorty/View/CharactersView.swift)
  - [Row](https://github.com/omercankoc/swift-handbook/blob/master/Sources/MVVM/RickAndMorty/RickAndMorty/View/Row/CharacterRow.swift)
  - [Display](https://github.com/omercankoc/swift-handbook/blob/master/Sources/MVVM/RickAndMorty/RickAndMorty/View/CharacterView.swift)
- [ViewModel](https://github.com/omercankoc/swift-handbook/blob/master/Sources/MVVM/RickAndMorty/RickAndMorty/ViewModel/CharactersViewModel.swift)
- [Network](https://github.com/omercankoc/swift-handbook/blob/master/Sources/MVVM/RickAndMorty/RickAndMorty/Networking/RestAPI.swift)

<table class="image-table">
    <tbody>
        <tr>
            <td> <img src="https://github.com/omercankoc/swift-handbook/blob/master/Images/mvvm1.png" stye="width:20%"></td>
            <td> <img src="https://github.com/omercankoc/swift-handbook/blob/master/Images/mvvm2.png" stye="width:20%"></td>
            <td> <img src="https://github.com/omercankoc/swift-handbook/blob/master/Images/mvvm3.png" stye="width:20%"></td>
            <td> <img src="https://github.com/omercankoc/swift-handbook/blob/master/Images/mvvm4.png" stye="width:20%"></td>
            <td> <img src="https://github.com/omercankoc/swift-handbook/blob/master/Images/mvvm5.png" stye="width:20%"></td>
        </tr>
    </tbody>
</table>

### About
- MVVM
- SwiftUI
- Navigation Stack
- Searchable
- Pagination
- Async Image
- Protocols
- Generic
