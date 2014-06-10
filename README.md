ios-rotten-tomatoes
===================

Rotten Tomatoes app for iOS class

**User Stories (Complete):**

- User can view a list of movies from Rotten Tomatoes.  Poster images must be loading asynchronously.
- User can pull to refresh the movie list.
- User sees loading state while waiting for movies API.
- User sees error message when there's a networking error.  You may not use UIAlertView to display the error.  (Not done exactly as spec'ed)
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

insert me

**Notes:**

This took me about 12 hours +/- a couple of hours.  At least a third of that time was trying to get
CocoaPods to work due to linking errors.  I finally realized it was building for 'Debug' but trying to
link for 'Release'.  I literally was banging my head against the desk with this.  

Since so little was covered in class, most of the remaining time was spent tracking down
how to do many of the things that we needed to do that were not even touched upon, rather than writing
and debugging.  I noted that the SF class has a lab period as well as lecture - is this class going to
just be too accelerated for folks like me who have no experience with mobile development beforehand?

One UI nit I noticed and didn't manage to fix is that the list view needs to be pulled "hard"
to see the movies at the front and end.  This is particularly a problem at the front where it's
easy to pull too hard and cause a refresh (and a UI jump back down).  Would love to hear how to fix
this.

I also couldn't figure out how to get the scrollable detail view as in the prototype demo after going
too far down that rathole, so I instead implemented a more useful page of detailed info that was static.
Ditto above message about how to do this.

Also couldn't figure out the intent for the network error message, so I used a control instead.  And
again, ditto would love clarification.
