# Movie Review App

This document provides instructions the movie review test project

## Application Setup

```
bundle install
rails db:create
rails db:migrate
rails db:seed
```

## Project Goals and Objectives

The current project is a very limited build out It only a contains a movies view. 10 movies have been preloaded with the seed file.
Implement the ability for the user to rate movies based on 3 different categories on a rating scale of 1 to 5. All 3 categories are equally weighted and are:

- Performance
- Special Effects
- Story Telling
There is no need to create a user class that would be used to track submissions based on the user (i.e. anyone can anonymously submit a review and as many times as they wish).
Once a review is submitted, the review scores should display both the total score and the individual category score. The total score is an equally weighted average of all three categories (i.e. Performance = 6, Special Effects = 8, Store Telling = 10 >> Total Score = 8).

When designing your implementation please take into account possible future features. Some of these may include

Additional Categories
An overall avg of all reviews submitted

This project should take 2-3 hours. Don't focus on design or usability for now and more on functionality.

## Submitting the project

Clone or copy the project to a private repo. Once it is ready you can either share access or zip up the project locally and send it via email to mikewalters@hetalretail.com