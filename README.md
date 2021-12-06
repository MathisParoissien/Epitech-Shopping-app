# Project Soap Shop

The API for this project is located at: https://api.npoint.io/c905fd4932fa5fd53b0e

Exercises:
- Create Data models:
    - Use Codable for your data model (ShopModel.swift) ✅
    - Create Unit Tests to test your implementation (ShopModelTests.swift) ✅
- Create the Networking layer:
    - Use URLSession for your networking layer (NetworkManager.swift) ✅
    - Create Unit Tests to test your networking implementation
- Create the API handler layer:
    - Use the created networking layer to fetch data (APIHandler.swift)
    - Create Unit Tests to test your networking implementation
- Update the views to reflect receiving data
    - Update HomeViewController and replace the TODOs
    - Update ProductTableViewCell apply method.
    - Update DetailViewController apply method
- Modify the UI implementation:
    - Make UI updates on the table view cell (No tests associated)
    - Check out the folder ./Expectation/
- Add navigation to detail view when a cell in tapped on
    - Check HomeViewController and UITableViewDelegate
    - You can either presenter or push a view
- Create caching layer:
    - Save the selected quantity when the user tap the [-] or [+] button on the product detail page.
    - Update DetailPresenter
    - Create Unit Tests to validate the caching
- Add Tests for HomePresenter and DetailPresenter
    - Located in HomePresenterTests.swift and DetailPresenterTests.swift

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
