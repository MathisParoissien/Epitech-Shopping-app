# Project Soap Shop

The API for this project is located at: https://api.npoint.io/c905fd4932fa5fd53b0e

Exercises:
- 1 Create Data models:
    - 1 Use Codable for your data model (ShopModel.swift) ✅
    - 2 Create Unit Tests to test your implementation (ShopModelTests.swift) ✅
- 2 Create the Networking layer:
    - 1 Use URLSession for your networking layer (NetworkManager.swift) ✅
    - 2 Create Unit Tests to test your networking implementation ✅
- 3 Create the API handler layer:
    - 1 Use the created networking layer to fetch data (APIHandler.swift)
    - 2 Create Unit Tests to test your networking implementation
- 4 Update the views to reflect receiving data
    - 1 Update HomeViewController and replace the TODOs
    - 2 Update ProductTableViewCell apply method.
    - 3 Update DetailViewController apply method
- 5 Modify the UI implementation:
    - 1 Make UI updates on the table view cell (No tests associated)
    - 2 Check out the folder ./Expectation/
- 6 Add navigation to detail view when a cell in tapped on
    - 1 Check HomeViewController and UITableViewDelegate
    - 2 You can either presenter or push a view
- 7 Create caching layer:
    - 1 Save the selected quantity when the user tap the [-] or [+] button on the product detail page.
    - 2 Update DetailPresenter
    - 3 Create Unit Tests to validate the caching

- 8 Add Tests for HomePresenter and DetailPresenter
    - 1 Located in HomePresenterTests.swift and DetailPresenterTests.swift

## UI

The UI needs to be update as such represented below. 

Now | After
-- | -- 
<img src="https://github.com/Xodia/ios-101-epitech-2021/blob/main/Shop/Shop/Expectation/Before.png" width="300" /> | <img src="https://github.com/Xodia/ios-101-epitech-2021/blob/main/Shop/Shop/Expectation/After.png" width="300" />


Form is located at this [link](https://docs.google.com/forms/d/1Qn3CR5MWs6z8qiXyBBqNv58V-ScXbLTD8kDOyE797Y4/prefill)

### Copy the project 

Copy the project 'Shop' into your own Github repository.
Complete the exercises for the project and commit your changes before the deadline which will be the Sunday before your Delivery slot. (26/12/2021)
Put a commit before your Follow up if you want us to go over what you've done and questions you have!
