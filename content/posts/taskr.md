---
categories:
- android
comments: true
date: "2015-01-07T00:00:00Z"
aliases: [/android/taskr]
tags:
- taskr
- android
- app
title: Taskr - the simplest task management app
---
I started off 2015 by making an Android app. I created a very simple todo list app called Taskr. This was mainly to brush up my Android skills and get my hands dirty while digging into Material Design. I was inspired by Material Design since it was launched, but never had the time to implement it in my hobby projects. Now I am trying to take baby steps every day and work on creating Android apps that mostly stick to the new Material Design.

I came up with the name Taskr because I couldn't come up with anything better. I did think about many names but since this isn't going anywhere near Play Store, I just stuck to the most unimaginative name possible. Yes, this is probably the simplest task management app that you can find. It's so simple that all you can do is add/edit a task name and description, mark tasks as done and delete completed tasks. To make it a little more usable, I used SQLite database to persist data entered by
the user.

This application uses no fragments, but just a couple of activities. Here's how I designed the application.

- A `TaskItem` data class that holds information about each task and is used to translate cursor objects.
- ArrayAdapter that spews out tasks from the TaskItem list.
- A `DatabaseHelper` class that is used to save the task items in an SQLite database.
- A main list activity to display the list with a floating action button and an activity dialog to add/edit a task
- A menu that has an option to clean up completed tasks.
- A util class that is used to calculate time elapsed since the task was created and display appropriately.

To make things simpler, I have used couple of libraries.

### Lombok
[Lombok](http://projectlombok.org/) helps you skip writing getters and setters for data objects by adding the `@Data` annotation. This helps in keeping the code short, clean and readable. So the class would look something like this:

{{< highlight java >}}
    @Data
    public class TaskItem {
        private int id;
        private String taskName;
        private String taskDescription;
        private long creationTime;
        private boolean isTaskComplete;
    }
{{< / highlight >}}

This looks much cleaner than a class that is cluttered with getters and setters.

### Butterknife
[Butterknife](https://jakewharton.github.io/butterknife/) is another library that helps you inject views more easily with annotations. Adding the @InjectView annotation will automatically cast the corresponding view in your layout. So you no longer have to write things like

{{< highlight java >}}
View view = inflater.inflate(R.layout.layout_main, container, false);
etTaskName = (EditText) view.findViewById(R.id.task_name_edit_text);
{{< / highlight >}}

You instead write:

{{< highlight java >}}
@InjectView(R.id.task_name_edit_text)
EditText etTaskName;
{{< / highlight >}}

There are many more things that these libraries offer and I plan to use it in every Android project of mine.

**Problems I faced**:  
I was finding it hard to keep the list up to date. Since I had my tasks in a List and I was using an instance of ArrayAdapter. It was hard to keep track of what was added to the list and what was deleted whenever the user interacted with the list. The main issue was when going from one activity to another and returning back to the main activity. Passing around intents with parcelable/serializable was a pain for a small app like this. And hitting database so often is not a great design.

**Solution I used**:  
I used a singleton to have a single copy of the task list which will be available to all activities in the app. So any add/update/remove operations performed on this list anywhere in the app will be reflected and is readily available (so the list will have the latest information), though in background I was writing the tasks to database. This mainly helped me avoid passing around intents back and forth.

It took me a few days to get this simple app done due to hectic work schedules. I guess I will get back to working on it and add some minor enhancements.

### Screenshots
Here are some screenshots of my app:

![](/images/taskr_task_list.png)
&nbsp;
![](/images/taskr_new_task.png)

The white background of the app blends into the white background of the page :(  
I'll have to change the theme sometime.

The project can be found on my GitHub page: [taskr](https://github.com/rrajath/taskr)
