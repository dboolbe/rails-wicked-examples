# rails-wicked-examples
This repository to test different ways of using Wicked to create a form wizard.

This repository is to show other ways of using the Wicked gem to create wizard forms. I created this repository for other users to see some of the things that I discovered in experimenting with Wicked.

## First Approach
In the application, I create a wizard using the basic tutorials on the subject. The model is created and stored on the database, the model's id is passed along via the GET protocol. After each wizard step, the attributes entered are updated to model and stored.

## Second Approach
There is a second approach that creates a wizard but data is handle differently. The form steps are all presented to you before the model is stored on the database. This approach avoids have semi-complete models residing within your database. This happens because the attributes of the models are passed along with the parameter component of the GET protocol. **NOTE** There are cons to this approach because GET potocol params are stored within the header request. The header has varying size limits so you can easily break the application by having too many attributes and/or having large attribute values. 