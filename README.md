ios-rotten-tomatoes
===================

Rotten Tomatoes app for iOS class

**User Stories (Complete):**

- User can view a list of movies from Rotten Tomatoes.  Poster images must be loading asynchronously.
- User can pull to refresh the movie list.
- User sees loading state while waiting for movies API.
- User sees error message when there's a networking error.  You may not use UIAlertView to display the error. 
- User can view movie details by tapping on a cell
- Add a tab bar for Box Office and DVD. (optional)

**User Stories (TODO/undone):**

- Customize the highlight and selection effect of the cell. (optional)
- All images fade in (optional)
- Customize the navigation bar. (optional)
- All images should be cached in memory and disk. In other words, images load immediately upon cold start (optional).
- For the large poster, load the low-res image first, switch to high-res when complete (optional)
- Add a search bar. (optional)

**UI Demo:**

![demo gif](https://raw.githubusercontent.com/osabina/ios-rotten-tomatoes/master/rt_demo.gif)

**Notes:**

This took me about 15 hours +/- a couple of hours.

Things that drove me the most nuts (spent hours figuring out, 1 minute to fix once I did):
  - Getting CocoaPods to link with the proper build (building Debug, trying to link Release)
  - Figuring out why UIScrollView wouldn't scroll (xib auto layout checkbox was checked)

I used a CocoaPod control for the network error message, wasn't clear on the intent of the
requirement to not use UIAlertView.
